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
        let oldHead: Location = boardView.snake[0]
        let oldTail: Location = boardView.snake[boardView.snake.count - 1]
        
        
        if oldHead.y > 0 {
            var newSnake: [Location] = []
            newSnake.append(Location(x: oldHead.x, y: oldHead.y - 1))
            for i in 0..<boardView.snake.count - 1 {
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            
            if oldHead.x == boardView.cherryLocation.x && oldHead.y == boardView.cherryLocation.y {
                print("YAY")
                let randomX: Int = Int(arc4random())
                let randomY: Int = Int(arc4random())
                let smallRandomY = randomY % boardView.rows
                let smallRandomX = randomX % boardView.cols
                
                print(smallRandomY)
                print(smallRandomX)
                boardView.cherryLocation = Location (x: smallRandomX, y: smallRandomY)
                newSnake.append(oldTail)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
    }
    
    
    
    @IBAction func leftTouched(_ sender: Any) {
        let oldHead:Location = boardView.snake[0]
        let oldTail: Location = boardView.snake[boardView.snake.count - 1]
        
        if oldHead.x > 0 {
            var newSnake: [Location] = []
            newSnake.append(Location(x: oldHead.x - 1 , y: oldHead.y  ))
            for i in 0..<boardView.snake.count - 1  {
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            
            if oldHead.x == boardView.cherryLocation.x && oldHead.y == boardView.cherryLocation.y {
                print("YAY")
                let randomX: Int = Int(arc4random())
                let randomY: Int = Int(arc4random())
                let smallRandomY = randomY % boardView.rows
                let smallRandomX = randomX % boardView.cols
                
                print(smallRandomY)
                print(smallRandomX)
                boardView.cherryLocation = Location (x: smallRandomX, y: smallRandomY)
                newSnake.append(oldTail)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
        
        
    }
    
    @IBAction func downTouched(_ sender: Any) {
        let oldHead:Location = boardView.snake[0]
        let oldTail: Location = boardView.snake[boardView.snake.count - 1]
        
        if oldHead.y < boardView.rows - 1  {
            var newSnake:[Location] = []
            newSnake.append(Location(x: oldHead.x, y: oldHead.y + 1))
            for i in 0..<boardView.snake.count - 1{
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            
            if oldHead.x == boardView.cherryLocation.x && oldHead.y == boardView.cherryLocation.y {
                print("YAY")
                let randomX: Int = Int(arc4random())
                let randomY: Int = Int(arc4random())
                let smallRandomY = randomY % boardView.rows
                let smallRandomX = randomX % boardView.cols
                
                print(smallRandomY)
                print(smallRandomX)
                boardView.cherryLocation = Location (x: smallRandomX, y: smallRandomY)
                newSnake.append(oldTail)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
        
        
    }
    
    
    @IBAction func rightTouched(_ sender: Any) {
        let oldHead:Location = boardView.snake[0]
        let oldTail: Location = boardView.snake[boardView.snake.count - 1]
        
        if oldHead.x < boardView.cols - 1 {
            var newSnake: [Location] = []
            
            newSnake.append(Location(x: oldHead.x + 1 , y: oldHead.y  ))
            for i in 0..<boardView.snake.count - 1 {
                let cell: Location = boardView.snake[i]
                newSnake.append(cell)
            }
            if oldHead.x == boardView.cherryLocation.x && oldHead.y == boardView.cherryLocation.y {
                print("YAY")
                let randomX: Int = Int(arc4random())
                let randomY: Int = Int(arc4random())
                let smallRandomY = randomY % boardView.rows
                let smallRandomX = randomX % boardView.cols
                
                print(smallRandomY)
                print(smallRandomX)
                boardView.cherryLocation = Location (x: smallRandomX, y: smallRandomY)
                newSnake.append(oldTail)
            }
            boardView.snake = newSnake
            boardView.setNeedsDisplay()
        }
    }
}
