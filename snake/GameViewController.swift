//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.:
//

import UIKit

let side: CGFloat = 23.0

class GameViewController: UIViewController {
    
    let numbOfRows = 14
    let numbOfCols = 8
    let initSnake = [Point(row: 4, col: 11),
                 Point(row: 4, col: 12),
                 Point(row: 3, col: 12),
                 Point(row: 2, col: 12),
                 ]
    
    var board = Board(rows: 0, cols: 0, snake: [])

    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        board = Board(rows: numbOfRows, cols: numbOfCols, snake: initSnake)

        boardView.cols = numbOfCols
        boardView.rows = numbOfRows
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        print("left")
        
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        print("up")
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        print("down")
        boardView.snakeCells = [CGPoint(x: 23.0 * 4.0, y: 23.0),
                                CGPoint(x: 23.0 * 3.0, y: 23.0),
        ]
        // snake is actually board.snake
        print(board.snake)
        print(board)
        //        snake = [Point(row: 15, col: 1),
        //                 Point(row: 15, col: 2),
        //        ]
        
        // Peter needs to calculate snakeCells
        
        // step 1.0: convert board.snake[0]
        // board.snake[0].row, board.snake[0].col
        // =>
        // snakeCells[0].y, snakeCells[0].x
        
        // step 1.1: convert board.snake[0] and board.snake[1]
        // step 1.2: use a loop
        
        //        snakeCells = [CGPoint(x: originX, y: originY),
        //                     CGPoint(x: originX + side, y: originY),
        //                     //        CGPoint(x: 20.0, y: 20.0),
        //            //        CGPoint(x: 20.0, y: 20.0),
        //        ]
        
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        print("right")
    }
}
