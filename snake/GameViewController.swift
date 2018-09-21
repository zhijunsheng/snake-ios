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

    let synthesizer = AVSpeechSynthesizer()
    
    let side: CGFloat = 23.0
    let numbOfRows = 8
    let numbOfCols = 14
    let initSnake = [Point(row: 2, col: 10),
                     Point(row: 2, col: 9),
                     Point(row: 2, col: 8),
                     Point(row: 3, col: 8),
                     Point(row: 4, col: 8),
                     ]
    
    var board = Board(rows: 0, cols: 0, snake: [], food: [])
    
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let foodPoints = [Point(row: 3, col: 5)]
        
        board = Board(rows: numbOfRows, cols: numbOfCols, snake: initSnake, food: foodPoints)
        
        print(board)
        
        boardView.cols = numbOfCols
        boardView.rows = numbOfRows
        boardView.originX = (boardView.frame.width -  side * CGFloat(boardView.cols)) / 2
        boardView.originY = (boardView.frame.height - side * CGFloat(boardView.rows)) / 3
        
        mapFoodToScreen()
        
        mapSnakeToScreen()
        boardView.setNeedsDisplay()
        let toSpeak = AVSpeechUtterance(string: "bang__________________Owuch!!!!!!!!!! bang__________________Owuch!!!!!!!!!!! bang__________________ Owuch!!!!!!!!!!!!")
        synthesizer.speak(toSpeak)
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        board.moveSnakeLeft()
        mapSnakeToScreen()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        board.moveSnakeUp()
        mapSnakeToScreen()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        board.moveSnakeDown()
        mapSnakeToScreen()
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        board.moveSnakeRight()
//        board.snake.append(board.snake[board.snake.count - 1])
        mapSnakeToScreen()
        boardView.setNeedsDisplay()
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
        print(boardView.snakeCells)
    }
    
    private func mapFoodToScreen() {
        boardView.foodCells = []
        for i in board.food.indices {
            let pointToConvertI = board.food[i]
            let convertedCGPointI = convert(point: pointToConvertI)
            boardView.foodCells += [convertedCGPointI]
        }
        print("-----------------\(boardView.foodCells)")
    }
}
