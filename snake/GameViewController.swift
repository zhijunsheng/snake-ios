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
        boardView.y = boardView.y - 50
        if boardView.y < 150 {
            boardView.y = 150
        }
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func leftArrow(_ sender: Any) {
        boardView.x = boardView.x - 50
        if boardView.x < 55 {
            boardView.x = 55
        }
        boardView.setNeedsDisplay()
    }
    
    @IBAction func downArrow(_ sender: Any) {
        boardView.y = boardView.y + 50
        if boardView.y > 600 {
            boardView.y = 600
        }
        boardView.setNeedsDisplay()
        
    }
    
    @IBAction func rightArrow(_ sender: Any) {
        boardView.x = boardView.x + 50
        if boardView.x > 505 {
            boardView.x = 505
        }
        boardView.setNeedsDisplay()
    }
    
}


