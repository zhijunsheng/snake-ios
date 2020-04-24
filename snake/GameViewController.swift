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
        boardView.y = boardView.x - 50
        if boardView.x < 150 {
            boardView.x = 150
        }
    }
    @IBAction func downArrow(_ sender: Any) {
        boardView.y = boardView.y + 50
        boardView.setNeedsDisplay()
        
    }
    
}


