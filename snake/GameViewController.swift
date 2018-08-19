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
    
    let numbOfRows = 8
    let numbOfCols = 14
    let initSnake = [Point(row: 2, col: 9),
                     Point(row: 2, col: 8),
                     Point(row: 3, col: 8),
                     Point(row: 4, col: 8),
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
        board.moveSnakeLeft()
        print(board)
        
        boardView.snakeCells = []
        
        for i in board.snake.indices {
            let pointToConvertI = board.snake[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.snakeCells += [convertedCGPointI]
        }
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        board.moveSnakeUp()
        print(board)
        
        boardView.snakeCells = []
        
        for i in board.snake.indices {
            let pointToConvertI = board.snake[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.snakeCells += [convertedCGPointI]
        }
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        board.moveSnakeDown()
        print(board)
        
        boardView.snakeCells = []
        
        for i in board.snake.indices {
            let pointToConvertI = board.snake[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.snakeCells += [convertedCGPointI]
        }
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        board.moveSnakeRight()
        print(board)
        
        boardView.snakeCells = []
        
        for i in board.snake.indices {
            let pointToConvertI = board.snake[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.snakeCells += [convertedCGPointI]
        }
        boardView.setNeedsDisplay()
    }
    
    func convert(point: Point) -> CGPoint {
        var cgPoint: CGPoint
        
        
        let x: CGFloat = boardView.originX + side * CGFloat(point.col - 1)
        let y: CGFloat = boardView.originY + side * CGFloat(numbOfRows) - side * CGFloat(point.row)
        cgPoint = CGPoint(x: x, y: y)
        return cgPoint
    }
}

