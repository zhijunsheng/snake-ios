//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, SnakeDelegate {
    let snakeGame = SnakeGame()
    @IBOutlet weak var snakeView: SnakeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeView.delegate = self                                   
    }
    
    @IBAction func moveRight(_ sender: Any) {
        
    }

    func isOnSnake(col: Int, row: Int) -> Bool {
        return snakeGame.isOnSnake(col: col, row: row)
    }
}    
