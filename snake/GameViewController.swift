//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, SnakeDelegate {
    
    var snakeGame = SnakeGame()
    
    var direction: Direction = .down
    
    @IBOutlet weak var snakeView: SnakeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeView.delegate = self
        
        snakeGame.updateFruit()
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            self.snakeGame.move(direction: self.direction)
            self.snakeView.setNeedsDisplay()
        }
    }
    
    @IBAction func moveRight(_ sender: Any) {
        direction = .right
    }
    
    @IBAction func moveDown(_ sender: Any) {
        direction = .down
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        direction = .left
    }
    
    @IBAction func moveUp(_ sender: Any) {
        direction = .up
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let fingerLocation = sender.location(in: snakeView)
        let col: Int = Int((fingerLocation.x - snakeView.gx) / snakeView.cell)
        print(col)
        
        let row: Int = Int((fingerLocation.y - snakeView.gy) / snakeView.cell)
        print(row)
//        snakeGame.changeDirection(fingerCol: col, fingerRow: row)
        moveByTouch(fingerCol: col, fingerRow: row)
    }
    
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
    
    func currentFruit() -> Fruit {
        return snakeGame.currentFruit()
    }
    
    func moveByTouch(fingerCol: Int, fingerRow: Int) {
        let snakeHead: SnakeCell = snakeGame.snake[0]
        if direction == .left || direction == .right {

            if fingerRow == snakeHead.row {
                return
            }
            
            if fingerRow < snakeHead.row {
                direction = .up
            } else {
                direction = .down
            }
        } else {
            
            if fingerCol == snakeHead.col {
                return
            }
            
            if fingerCol < snakeHead.col {
                direction = .left
            } else {
                direction = .right
            }
        }

    }
    

}

