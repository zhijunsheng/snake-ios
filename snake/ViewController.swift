//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var board = Board()
    
    @IBOutlet var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.snk = board.snake
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        print(board)
        board.moveLeft()
        print(board)
        boardView.snk = board.snake

        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        board.moveRight()
        boardView.snk = board.snake
        boardView.setNeedsDisplay()

    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        board.moveUp()
        boardView.snk = board.snake
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        board.moveDown()
        boardView.snk = board.snake
        boardView.setNeedsDisplay()
    }
    
    
}

