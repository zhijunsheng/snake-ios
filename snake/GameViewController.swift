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
        
        game.snake.append(SnakeCell(col: 1, row: 1))
        game.snake.append(SnakeCell(col: 2, row: 1))
        game.snake.append(SnakeCell(col: 2, row: 2))
        game.snake.append(SnakeCell(col: 2, row: 3))
        
        let randomCol: Int = Int(arc4random()) % GridView.gridNum
        let randomRow: Int = Int(arc4random()) % GridView.gridNum
        
        game.fruit = Fruit(col: randomCol, row: randomRow)
        
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
    }
    
    @IBAction func moveUp(_ sender: Any) {
        game.moveSnakeUp()
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
    
    @IBAction func moveDown(_ sender: Any) {
        game.moveSnakeDown()
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        game.moveSnakeLeft()
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
    
    
    @IBAction func moveRight(_ sender: Any) {
        game.moveSnakeRight()
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gridView.setNeedsDisplay()
    }
}
