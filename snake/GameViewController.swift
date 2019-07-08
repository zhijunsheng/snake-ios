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
    
    @IBAction func upTouched(_ sender: Any) {
        var oldHead:Location = boardView.snake[0]
        if oldHead.y > 0 {
            var newSnake: [Location] = []
            newSnake.append(Location(x: oldHead.x, y: oldHead.y - 1))
            for i in 0..<boardView.snake.count - 1 {
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
        
        //        var cols:Int = 12
        //        var rows:Int = 17
        //        var oldHead:Location = boardView.snake[ 0]
        //        if oldHead.col == oldHead.x {
        //            if oldHead.row == oldHead.y {
        //            print("Yay!")
        
        if oldHead.x == boardView.cherryLocation.x {
            if oldHead.y == boardView.cherryLocation.y {
                print("YAY")
            }
        }
    }
    
    
    
    @IBAction func leftTouched(_ sender: Any) {
        let oldHead:Location = boardView.snake[0]
        if oldHead.x > 0 {
            var newSnake: [Location] = []
            newSnake.append(Location(x: oldHead.x - 1 , y: oldHead.y  ))
            for i in 0..<boardView.snake.count - 1  {
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
        if oldHead.x == boardView.cherryLocation.x {
            if oldHead.y == boardView.cherryLocation.y  {
                print("YAY")
            }
        }

    }
    
    @IBAction func downTouched(_ sender: Any) {
        let oldHead:Location = boardView.snake[0]
        if oldHead.y < boardView.rows - 1  {
            var newSnake:[Location] = []
            newSnake.append(Location(x: oldHead.x, y: oldHead.y + 1))
            for i in 0..<boardView.snake.count - 1{
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
        if oldHead.x == boardView.cherryLocation.x {
            if oldHead.y == boardView.cherryLocation.y {
                print("YAY")
            }
        }

    }
    
    
    @IBAction func rightTouched(_ sender: Any) {
        let oldHead:Location = boardView.snake[0]
        if oldHead.x < boardView.cols - 1 {
            var newSnake: [Location] = []
            newSnake.append(Location(x: oldHead.x + 1 , y: oldHead.y  ))
            for i in 0..<boardView.snake.count - 1 {
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
        if oldHead.x == boardView.cherryLocation.x {
            if oldHead.y == boardView.cherryLocation.y  {
                print("YAY")
            }
        }

    }
}

