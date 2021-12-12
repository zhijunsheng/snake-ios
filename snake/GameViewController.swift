//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var game: SnakeGame = SnakeGame()
    
    @IBOutlet weak var gridView: GridView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game.snake.append(SnakeCell(col: 1, row: SnakeGame.gridNum/2))
        game.snake.append(SnakeCell(col: 0, row: SnakeGame.gridNum/2))
        
        let randomCol: Int = Int(arc4random()) % SnakeGame.gridNum
        let randomRow: Int = Int(arc4random()) % SnakeGame.gridNum
        
        game.fruit = Fruit(col: randomCol, row: randomRow)
        
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
    }
    
    @IBAction func moveUp(_ sender: Any) {
        game.moveSnake(direction: .north)
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
    
    @IBAction func moveDown(_ sender: Any) {
        game.moveSnake(direction: .south )
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        game.moveSnake(direction: .west)
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
    
    
    @IBAction func moveRight(_ sender: Any) {
        game.moveSnake(direction: .east)
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
}
