//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    let numRows = 21
    let numCols = 12
    
    @IBOutlet var boardView: BoardView!
    var board = Board(numRows: 0, numCols: 0, snake: [], food: [])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let snake: [Point] = [
            Point(row: 2, col: 2),
            Point(row: 2, col: 3)
        ]
        
        let food = [
            Point(row: 10, col: 4),
            Point(row: 8, col: 10),
        ]
        board = Board(numRows: numRows, numCols: numCols, snake: snake, food: food)
        updateViewFromModel()
    }
    
    @IBAction func leftButton(_ sender: Any) {
//        moveSnakeToLeft()
        board.moveSnakeLeft()
        
        updateViewFromModel()
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        // modify our model, e.g change the food, or snake
//        let newSnake = [
//            Point(row: 2, col: 2),
//            Point(row: 2, col: 3),
//            Point(row: 2, col: 4)
//        ]
//
//        board = Board(numRows: numRows, numCols: numCols, snake: newSnake, food: board.food)
//
//        print(board)

        updateViewFromModel()
    }
    
    private func location(of point: Point, inBoardView boardView: BoardView) -> CGPoint {
        let centerX = boardView.gridTopLeft.x + CGFloat(point.col - 1) * boardView.cellSide
        let centerY = boardView.gridTopLeft.y + CGFloat(boardView.gridHeight - point.row) * boardView.cellSide
        return CGPoint(x: centerX, y: centerY)
    }
    
    func updateViewFromModel() {
        boardView.gridHeight = board.numRows
        boardView.gridWidth = board.numCols
        boardView.cellSide = 20
        boardView.gridTopLeft = CGPoint(x: 20.0, y: 20.0)
        
        // based on our model, i.e. board
        // we can draw on boardView with all the info in board
        
        for i in board.food {
            boardView.food.append(convertFrom(point: i))
        }
        
        for i in board.snake {
            print(i)
            boardView.snake.append(convertFrom(point: i))
        }
        
        boardView.setNeedsDisplay()
    }
    
    func convertFrom(point: Point) -> CGPoint {
        let x = boardView.gridTopLeft.x + boardView.cellSide * CGFloat(point.col)
        let y = boardView.gridTopLeft.y + boardView.cellSide * CGFloat(boardView.gridHeight - point.row)
        
        return CGPoint(x: x, y: y)
    }
    
}

