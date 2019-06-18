//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    @IBAction func upTouched(_ sender: Any) {
        print("Leean is going to France today at 5:50")
        
        boardView.snakeRow = boardView.snakeRow - 1
        
        boardView.setNeedsDisplay()
    }
    
    
    @IBAction func leftTouched(_ sender: Any) {
        boardView.snakeCol = boardView.snakeCol - 1
         boardView.setNeedsDisplay()
    }
    
    @IBAction func downTouched(_ sender: Any) {
        boardView.snakeRow = boardView.snakeRow + 1
        boardView.setNeedsDisplay()
    }
    
    @IBAction func rightTouched(_ sender: Any) {
        boardView.snakeCol = boardView.snakeCol + 1
        boardView.setNeedsDisplay()
    }
    
    
    
    
    
    
}

