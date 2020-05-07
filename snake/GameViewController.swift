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

        
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    func eatUpdate() {
        if snakeGame.snake[0].col == snakeGame.appleX && snakeGame.snake[0].row == snakeGame.appleY {
            snakeGame.eat()
            gameScreen.shadowAppleX = snakeGame.appleX
            gameScreen.shadowAppleY = snakeGame.appleY
            snakeGame.randomApple()
            gameScreen.shadowAppleX = snakeGame.appleX
            gameScreen.shadowAppleY = snakeGame.appleY
            
            snakeGame.snake.append(SnakeCell(col: snakeGame.snake[snakeGame.snake.count - 1].col, row: snakeGame.snake[snakeGame.snake.count - 1].row - 1))
            gameScreen.snakeShadow = snakeGame.snake
            gameScreen.setNeedsDisplay()
        }
        
    }
    
    @IBAction func moveRight(_ sender: Any) {
        snakeGame.moveRight()
        
        eatUpdate()
        
        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        snakeGame.moveLeft()
        eatUpdate()

        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveUp(_ sender: Any) {
        snakeGame.moveUp()
        eatUpdate()

        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveDown(_ sender: Any) {
        snakeGame.moveDown()
        eatUpdate()

        gameScreen.snakeShadow = snakeGame.snake
        gameScreen.setNeedsDisplay()

    }
}

