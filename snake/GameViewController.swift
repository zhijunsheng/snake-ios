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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeView.delegate = self
        
        snakeGame.updateFruit()
    }
    
    @IBAction func moveRight(_ sender: Any) {
        snakeGame.move(direction: .right)
        snakeView.setNeedsDisplay()
    }
    
    @IBAction func moveDown(_ sender: Any) {
        snakeGame.move(direction: .down)
        snakeView.setNeedsDisplay()
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        snakeGame.move(direction: .left)
        snakeView.setNeedsDisplay()
    }
    
    @IBAction func moveUp(_ sender: Any) {
        snakeGame.move(direction: .up)
        snakeView.setNeedsDisplay()
    }
    
    
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
    
    func currentFruit() -> Fruit {
        return snakeGame.currentFruit()
    }
}

