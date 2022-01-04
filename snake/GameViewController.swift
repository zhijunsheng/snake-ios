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
    
    @IBOutlet weak var snakeView: SnakeView!
    @IBOutlet weak var infoLabel: UILabel!
    
    var gameOver: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeView.delegate = self
        
        snakeGame.updateFruit()
        
        infoLabel.text = ""
        snakeGame.restartGame()
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            if !self.gameOver {
                self.snakeGame.move(direction: self.snakeGame.direction)
                self.snakeView.setNeedsDisplay()
            }
            
            let head = self.snakeGame.snake[0]
            print(head.row)
            if head.row >= SnakeGame.size ||
                head.col >= SnakeGame.size ||
                head.row <= -1 ||
                head.col <= -1 {
                self.infoLabel.text = "You Lose"
                self.gameOver = true
            }
            
        }
    }
    
    
    @IBAction func restart(_ sender: Any) {
        infoLabel.text = ""
        gameOver = false
        snakeGame.restartGame()
    }
    
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let fingerLocation = sender.location(in: snakeView)
        let col: Int = Int((fingerLocation.x - snakeView.gx) / snakeView.cell)
        print(col)
        
        let row: Int = Int((fingerLocation.y - snakeView.gy) / snakeView.cell)
        print(row)
        snakeGame.changeDirection(fingerCol: col, fingerRow: row)
    }
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
    
    func currentFruit() -> Fruit {
        return snakeGame.currentFruit()
    }
}

