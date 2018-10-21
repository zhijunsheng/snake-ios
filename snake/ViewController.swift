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
    var direction: Direction = .start
    
    enum Direction {
        case up
        case down
        case left
        case right
        case stop
        case start
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var counter = 0
        board.columns = Int((boardView.frame.width / boardView.side) - 1)
        board.rows = Int(boardView.frame.height / boardView.side - 2)
        boardView.cols = board.columns
        boardView.rows = board.rows
        board.food = [board.makeRandFoodPoint()]
        boardView.snakeCells = board.snake
        boardView.setNeedsDisplay()
        print(CGFloat(boardView.snakeCells[0].col - 1) * boardView.side + boardView.originX)        
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (t: Timer) in
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
            case .start:
                break
            }
            print(counter)
            counter += 1
            self.boardView.foodCells = self.board.food
            self.boardView.snakeCells = self.board.snake
            self.boardView.setNeedsDisplay()
            
            var b = 0
            for i in self.board.snake {
                if b > 0 {
                    if (self.board.snake[0].col == i.col && self.board.snake[0].row == i.row) && (self.direction == .right || self.direction == .left || self.direction == .up || self.direction == .down){
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
        
            self.scoreBoard.text = "Score: \(self.board.snake.count - 3)"
        }
        print(board)
    }
    
    
    @IBAction func swipeOnBoard(_ sender: UISwipeGestureRecognizer) {
        //        if sender.direction == UISwipeGestureRecognizer.left {
        //
        //        }
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
        case .start:
            
            
            direction = .left
            direction = .right
        
    }
}
}
