//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var gameScreen: GameScreen!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    @IBAction func moveRight(_ sender: Any) {
        gameScreen.snakeCell = SnakeCell(col: gameScreen.snakeCell.col + 1, row: gameScreen.snakeCell.row)
        gameScreen.setNeedsDisplay()
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        gameScreen.snakeCell = SnakeCell(col: gameScreen.snakeCell.col - 1, row: gameScreen.snakeCell.row)
        gameScreen.setNeedsDisplay()

    }
    
    @IBAction func moveUp(_ sender: Any) {
        gameScreen.snakeCell = SnakeCell(col: gameScreen.snakeCell.col, row: gameScreen.snakeCell.row - 1)
        gameScreen.setNeedsDisplay()

    }
    
    @IBAction func moveDown(_ sender: Any) {
        gameScreen.snakeCell = SnakeCell(col: gameScreen.snakeCell.col, row: gameScreen.snakeCell.row + 1)
        gameScreen.setNeedsDisplay()

    }
}

