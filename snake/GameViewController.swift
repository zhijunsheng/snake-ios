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
      
        if boardView.snakeRow > 0 {
            boardView.snakeBody3Row = boardView.snakeBody2Row
            boardView.snakeBody3Col = boardView.snakeBody2Col
            
            boardView.snakeBody2Row = boardView.snakeBody1Row
            boardView.snakeBody2Col = boardView.snakeBody1Col
            
            boardView.snakeBody1Row = boardView.snakeBody0Row
            boardView.snakeBody1Col = boardView.snakeBody0Col
            
            boardView.snakeBody0Row = boardView.snakeRow
            boardView.snakeBody0Col = boardView.snakeCol
            
            boardView.snakeRow = boardView.snakeRow - 1
            boardView.setNeedsDisplay()
            
        }
        
    }
    @IBAction func leftTouched(_ sender: Any) {
        if boardView.snakeCol > 0 {
            boardView.snakeBody3Row = boardView.snakeBody2Row
            boardView.snakeBody3Col = boardView.snakeBody2Col
            
            boardView.snakeBody2Row = boardView.snakeBody1Row
            boardView.snakeBody2Col = boardView.snakeBody1Col
            
            boardView.snakeBody1Row = boardView.snakeBody0Row
            boardView.snakeBody1Col = boardView.snakeBody0Col
            
            boardView.snakeBody0Row = boardView.snakeRow
            boardView.snakeBody0Col = boardView.snakeCol
            
            boardView.snakeCol = boardView.snakeCol - 1
            boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func downTouched(_ sender: Any) {
        if boardView.snakeRow < boardView.rows - 1 {
            boardView.snakeBody3Row = boardView.snakeBody2Row
            boardView.snakeBody3Col = boardView.snakeBody2Col
            
            boardView.snakeBody2Row = boardView.snakeBody1Row
            boardView.snakeBody2Col = boardView.snakeBody1Col
            
            boardView.snakeBody1Row = boardView.snakeBody0Row
            boardView.snakeBody1Col = boardView.snakeBody0Col
            
            boardView.snakeBody0Row = boardView.snakeRow
            boardView.snakeBody0Col = boardView.snakeCol
            
            boardView.snakeRow = boardView.snakeRow + 1
            boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func rightTouched(_ sender: Any) {
        if boardView.snakeCol < boardView.cols - 1 {
            boardView.snakeBody3Row = boardView.snakeBody2Row
            boardView.snakeBody3Col = boardView.snakeBody2Col
            
            boardView.snakeBody2Row = boardView.snakeBody1Row
            boardView.snakeBody2Col = boardView.snakeBody1Col
            
            boardView.snakeBody1Row = boardView.snakeBody0Row
            boardView.snakeBody1Col = boardView.snakeBody0Col
            
            boardView.snakeBody0Row = boardView.snakeRow
            boardView.snakeBody0Col = boardView.snakeCol
            
            boardView.snakeCol = boardView.snakeCol + 1
            boardView.setNeedsDisplay()
        }
    }
}
