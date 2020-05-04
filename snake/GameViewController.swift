//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var snakeGame: SnakeGame = SnakeGame()
    
    @IBOutlet weak var boardView: GameView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeGame.snake.append(SnakeCell(col: 3, row: 2))
//        snakeGame.snake.append(SnakeCell(col: 4, row: 2))
//        snakeGame.snake.append(SnakeCell(col: 5, row: 2))
//        snakeGame.snake.append(SnakeCell(col: 6, row: 2))
//        snakeGame.snake.append(SnakeCell(col: 7, row: 2))
//        snakeGame.snake.append(SnakeCell(col: 8, row: 2))
        
        boardView.snakeShadow = snakeGame.snake
    }

    @IBAction func goUp(_ sender: Any) {
        snakeGame.moveUp()
        boardView.snakeShadow = snakeGame.snake
        boardView.setNeedsDisplay()
    }
    
    @IBAction func goDown(_ sender: Any) {
        snakeGame.moveDown()
        boardView.snakeShadow = snakeGame.snake
        boardView.setNeedsDisplay()
    }
    
    @IBAction func goLeft(_ sender: Any) {
        snakeGame.moveLeft()
        boardView.snakeShadow = snakeGame.snake
        boardView.setNeedsDisplay()
    }
        
    @IBAction func goRight(_ sender: Any) {
        snakeGame.moveRight()
        boardView.snakeShadow = snakeGame.snake
        boardView.setNeedsDisplay()
    }

    @IBAction func goDownDiagonal(_ sender: Any) {
        snakeGame.moveDownDiagonal()
        boardView.snakeShadow = snakeGame.snake
        boardView.setNeedsDisplay()
    }
}
