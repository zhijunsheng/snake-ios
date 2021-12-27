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
    }
    
    @IBAction func moveRight(_ sender: Any) {
        snakeGame.moveRight()
        snakeView.setNeedsDisplay()
    }
    
    @IBAction func moveDown(_ sender: Any) {
        snakeGame.moveDown()
        snakeView.setNeedsDisplay()
    }
    
    
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
}

