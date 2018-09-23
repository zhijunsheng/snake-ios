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
            
            print(self.board.snake)
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
            
            for i in self.board.snake {
                var b = 0
                
                while b > 0 {
                    if self.board.snake[0].col == i.col && self.board.snake[0].row == i.row {
                        self.direction = .stop
                        
                    }
                }
                b += 1
            }
            
            if self.board.snake[0].col > 20 || self.board.snake[0].row > 35 || self.board.snake[0].col < 1 || self.board.snake[0].row < 1 {
                self.direction = .stop
            }
        }
    }
    
    @IBAction func moveUp(_ sender: Any) {
        if direction != .down {
                      direction = .up
                    }
    }
    
    @IBAction func moveDown(_ sender: Any) {
        if direction != .up {
            direction = .down
        }

    }
    @IBAction func moveRight(_ sender: Any) {
        if direction != .left {
            direction = .right
        }
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        if direction != .right {
            direction = .left
        }

    }
}
