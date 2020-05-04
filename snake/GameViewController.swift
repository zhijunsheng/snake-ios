//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    // MVC
    // M: object of SnakeGame
    // V: object of GameScreen
    // C: object of GameViewController
    
    var snakeGame = SnakeGame()
    
    @IBOutlet weak var gameScreen: GameScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeGame.randomApple()
        gameScreen.shadowAppleX = snakeGame.appleX
        gameScreen.shadowAppleY = snakeGame.appleY

        snakeGame.snake.append(SnakeCell(col: 14, row: 11)) // 0
        snakeGame.snake.append(SnakeCell(col: 14, row: 12)) // 1
        snakeGame.snake.append(SnakeCell(col: 14, row: 13)) // 2
        snakeGame.snake.append(SnakeCell(col: 15, row: 13)) // 3
        snakeGame.snake.append(SnakeCell(col: 16, row: 13)) // 4
        snakeGame.snake.append(SnakeCell(col: 16, row: 12)) // 5
        
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveRight(_ sender: Any) {
        snakeGame.moveRight()
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        snakeGame.moveLeft()
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveUp(_ sender: Any) {
        snakeGame.moveUp()
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveDown(_ sender: Any) {
        snakeGame.moveDown()
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()

    }
}

