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
        
        boardView.y = boardView.y - boardView.cellSide
        if boardView.y < boardView.originX + boardView.cellSide / 2 {
            boardView.y = boardView.originX + boardView.cellSide / 2
        }
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func leftArrow(_ sender: Any) {
        boardView.x = boardView.x - boardView.cellSide
        if boardView.x < boardView.originX + boardView.cellSide / 2 {
            boardView.x = boardView.originX + boardView.cellSide / 2
        }
        boardView.setNeedsDisplay()
    }

    
    @IBAction func downArrow(_ sender: Any) {
        boardView.y = boardView.y + boardView.cellSide
        if boardView.y > boardView.originY + boardView.cellSide * 10 - boardView.cellSide / 2 {
            boardView.y = boardView.originY + boardView.cellSide * 10 - boardView.cellSide / 2 
        }
        boardView.setNeedsDisplay()
        
    }
    
    @IBAction func rightArrow(_ sender: Any) {
        boardView.x = boardView.x + boardView.cellSide
        if boardView.x > boardView.originX + boardView.cellSide * 10 - boardView.cellSide / 2 {
            boardView.x = boardView.originX + boardView.cellSide * 10 - boardView.cellSide / 2
        }
        boardView.setNeedsDisplay()
    }
    
}


