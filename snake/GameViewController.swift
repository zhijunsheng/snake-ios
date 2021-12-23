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
        
        snakeGame.moveDown()
        snakeGame.moveRight()
    }
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
}

