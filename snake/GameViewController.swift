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
    
    
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
    
    func currentFruit() -> Fruit {
        return snakeGame.currentFruit()
    }
}

