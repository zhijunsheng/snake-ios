//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var boardView: GameView!
    
    override func viewDidLoad() {
        super.viewDidLoad()      
    }

    @IBAction func goUp(_ sender: Any) {
        boardView.snakeY = boardView.snakeY - 1
        boardView.setNeedsDisplay()
    }
    
    @IBAction func goDown(_ sender: Any) {
        boardView.snakeY = boardView.snakeY + 1
        boardView.setNeedsDisplay()
    }
    
    @IBAction func goLeft(_ sender: Any) {
        boardView.snakeX = boardView.snakeX - 1
        boardView.setNeedsDisplay()
    }
        
    @IBAction func goRight(_ sender: Any) {
        boardView.snakeX = boardView.snakeX + 1
        boardView.setNeedsDisplay()
    }
}
