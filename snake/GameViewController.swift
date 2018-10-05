//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.:
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {
    
    let side: CGFloat = 23.0
    let numbOfRows = 25
    let numbOfCols = 14
    let initSnake = [Point(row: 2, col: 10),
                     Point(row: 2, col: 9),
                     Point(row: 2, col: 8),
                     Point(row: 3, col: 8),
                     Point(row: 4, col: 8),
                     ]
    var foodPoints: [Point] = []
    
    
    var board = Board(rows: 0, cols: 0, snake: [], food: [])
    
    var turner = Direction.up // 0: left, 1:up, 2: right, 3: down
    
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodPoints = [Point(row: 3, col: 5),
                      Point(row: 2, col: 8)
        ]
        
        board = Board(rows: numbOfRows, cols: numbOfCols, snake: initSnake, food: foodPoints)
        
        print(board)
        
        boardView.cols = numbOfCols
        boardView.rows = numbOfRows
        boardView.originX = (boardView.frame.width -  side * CGFloat(boardView.cols)) / 2
        boardView.originY = (boardView.frame.height - side * CGFloat(boardView.rows)) / 3
        
        mapFoodToScreen()
        
        mapSnakeToScreen()
        boardView.setNeedsDisplay()
        
        _ = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
            switch self.turner {
            case .up:
                self.board.moveSnakeUp()
            case .down:
                self.board.moveSnakeDown()
            case .left:
                self.board.moveSnakeLeft()
            case .right:
                self.board.moveSnakeRight()
            }
            
            if self.board.isSnakeDead() {
                self.board.snake.removeAll()
                timer.invalidate()
            }

            self.mapSnakeToScreen()
            self.mapFoodToScreen()
            self.boardView.setNeedsDisplay()
        }
        
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        turner = .left
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        turner = .up
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        turner = .down
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        turner = .right
    }
    
    @IBAction func touchBoard(_ sender: UITapGestureRecognizer) {
        print("¯\\\\_(ツ)_//¯")
        print(sender.location(in: boardView))
        let touchX = sender.location(in: boardView).x
        let touchY = sender.location(in: boardView).y
        
        // to be ✂️
        let headX = self.boardView.snakeCells[0].x
        let headY = self.boardView.snakeCells[0].y
        print("headX = \(headX), headY = \(headY)")
        
        
//        if headX < touchX && (turner == 0 || turner == 1 || turner == 2) {
//            turner = 3
//        } else if headY > touchY && (turner == 0 || turner == 1 || turner == 3) {
//            turner = 2
//        } else if headY < touchY && (turner == 0 || turner == 2 || turner == 3) {
//            turner = 1
//        } else if headX > touchX && (turner == 1 || turner == 2 || turner == 3) {
//            turner = 0
//        }
   }
    
    
    func convert(point: Point) -> CGPoint {
        var cgPoint: CGPoint
        
        
        let x: CGFloat = boardView.originX + side * CGFloat(point.col - 1)
        let y: CGFloat = boardView.originY + side * CGFloat(numbOfRows) - side * CGFloat(point.row)
        cgPoint = CGPoint(x: x, y: y)
        return cgPoint
    }
    
    private func mapSnakeToScreen() {
        boardView.snakeCells = []
        
        for i in board.snake.indices {
            let pointToConvertI = board.snake[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.snakeCells += [convertedCGPointI]
        }
    }
    
    private func mapFoodToScreen() {
        boardView.foodCells = []
        for i in board.food.indices {
            let pointToConvertI = board.food[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.foodCells += [convertedCGPointI]
        }
    }
}
