//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var board = Board()
    
    @IBOutlet var boardView: BoardView!
    @IBOutlet weak var scoreBoard: UILabel!
    
    
    var timer: Timer?
    var direction: Direction = .down
    
    enum Direction {
        case up
        case down
        case left
        case right
        case stop
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var stringScoreBoard = scoreBoard.text
        
        board.columns = 25
        board.rows = 40
        boardView.cols = board.columns
        boardView.rows = board.rows
        board.food = [board.makeRandFoodPoint()]
        boardView.snakeCells = board.snake
        boardView.setNeedsDisplay()
        print(CGFloat(boardView.snakeCells[0].col - 1) * boardView.side + boardView.originX)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { (t: Timer) in
            switch self.direction {
            case .up :
                self.board.moveSnakeUp()
            case .down:
                self.board.moveSnakeDown()
            case .left:
                self.board.moveSnakeLeft()
            case .right:
                self.board.moveSnakeRight()
            case .stop:
                self.timer?.invalidate()
            }
            self.boardView.foodCells = self.board.food
            self.boardView.snakeCells = self.board.snake
            self.boardView.setNeedsDisplay()
            
            for _ in self.board.snake {
                var number = 0
                
                if number > 0 {
                    if self.board.snake[0] == self.board.snake[number] {
                        self.direction = .stop
                    }
                }
                number += 1
            }
            var b = 0
            for i in self.board.snake {
                if b > 0 {
                    if self.board.snake[0].col == i.col && self.board.snake[0].row == i.row {
                        self.direction = .stop
                    }
                }
                if b == self.board.snake.count - 1 {
                    b = 0
                }
                b += 1
            }
            
            if self.board.snake[0].col > self.board.columns || self.board.snake[0].row > self.board.rows || self.board.snake[0].col < 1 || self.board.snake[0].row < 1 {
                self.direction = .stop
            }
            self.board.snakeGrows()
        
            self.scoreBoard.text = "Score: \(self.board.snake.count - 1)"
            
        }
        print(board)
    }
    
    
    @IBAction func swipeOnBoard(_ sender: UISwipeGestureRecognizer) {
        //        if sender.direction == UISwipeGestureRecognizer.left {
        //
        //        }
    }
    
    @IBAction func moveUp(_ sender: Any) {
        if board.snake.count > 1 {
            if direction != .down {
                direction = .up
            }
        } else {
            direction = .up
        }
    }
    
    @IBAction func touchBoard(_ sender: UITapGestureRecognizer){
        
        let snakeHeadX = CGFloat(board.snake[0].col - 1) * boardView.side + boardView.originX
        let touchX = sender.location(in: view).x
        let snakeHeadY = CGFloat(board.snake[0].row - 1) * boardView.side + boardView.originY
        let touchY = sender.location(in: view).y
        
        switch direction {
        case .up, .down :
            if  snakeHeadX > touchX {
                                direction = .left
            } else if snakeHeadX + boardView.side < touchX {
                                direction = .right
                            }
            
            
            
        case .left,.right:
            if  snakeHeadY > touchY {
                                direction = .up
                            } else if snakeHeadY + boardView.side < touchY {
                                direction = .down
                            }
        case .stop:
            break
        }
        
//        if direction == .up || direction == .down {
//            if  snakeHeadX > touchX {
//                direction = .left
//            } else if snakeHeadX + boardView.side < touchX {
//
//                direction = .right
//            }
//        } else if direction == .right || direction == .left {
//            if  snakeHeadY > touchY {
//                direction = .up
//            } else if snakeHeadY + boardView.side < touchY {
//                direction = .down
//            }
//        }
        
        print ("\(snakeHeadX)  and \(touchX)")
    }
    @IBAction func moveDown(_ sender: Any) {
        if board.snake.count > 1 {
            if direction != .up {
                direction = .down
            }
        } else {
            direction = .down
        }
    }
    @IBAction func moveRight(_ sender: Any) {
        if board.snake.count > 1 {
            if direction != .left {
                direction = .right
            }
        } else {
            direction = .right
        }
    }
    
    
    @IBAction func moveLeft(_ sender: Any) {
        if board.snake.count > 1 {
            if direction != .right {
                direction = .left
            }
        } else {
            direction = .left
        }
    }
}
