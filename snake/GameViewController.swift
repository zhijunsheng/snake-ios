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
       
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func upArrow(_ sender: Any) {
        boardView.snakeRow = boardView.snakeRow - 1
        if boardView.snakeRow < 0 {
            boardView.snakeRow = 0
        }
        boardView.setNeedsDisplay()
    }
    
    @IBAction func leftArrow(_ sender: Any) {
        boardView.snakeCol = boardView.snakeCol - 1
        if boardView.snakeCol < 0 {
            boardView.snakeCol = 0
        }
        boardView.setNeedsDisplay()
    }

    
    @IBAction func downArrow(_ sender: Any) {
        boardView.snakeRow = boardView.snakeRow + 1
        if boardView.snakeRow > 9 {
            boardView.snakeRow = 9
        }
        boardView.setNeedsDisplay()        
    }
    
    @IBAction func rightArrow(_ sender: Any) {
        boardView.snakeCol = boardView.snakeCol + 1
        if boardView.snakeCol > 9 {
            boardView.snakeCol = 9
        }
        boardView.setNeedsDisplay()
    }
    
}


