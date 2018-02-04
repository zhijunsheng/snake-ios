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
        
        var snake = [
            Point(row: 2, col: 2),
            Point(row: 2, col: 3)
        ]
        
        var food = [
            Point(row: 6, col: 5)
        ]
        board = Board(numRows: numRows, numCols: numCols, snake: snake, food: food)
        
        updateViewFromModel()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("button was tapped")
        
        // modify our model, e.g change the food, or snake
        let newSnake = [
            Point(row: 2, col: 2),
            Point(row: 2, col: 3),
            Point(row: 2, col: 4)
        ]
        
        board = Board(numRows: numRows, numCols: numCols, snake: newSnake, food: board.food)
        
        print(board)
        
        updateViewFromModel()
    }
    
    
    
    func updateViewFromModel() {
        print("inside updateViewFromModel()")
        
        boardView.gridHeight = board.numRows
        boardView.gridWidth = board.numCols
        boardView.cellSide = 20
        boardView.gridTopLeft = CGPoint(x: 20.0, y: 20.0)
        
        // based on our model, i.e. board
        // we can draw on boardView with all the info in board
        
//        board.food
//        board.numCols
//        board.snake
        
        
        boardView.setNeedsDisplay()
    }
    
}

