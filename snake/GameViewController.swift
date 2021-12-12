//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var game: SnakeGame = SnakeGame()
    
    @IBOutlet weak var gridView: GridView!
    
    var direction: Direction = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game.snake.append(SnakeCell(col: 1, row: SnakeGame.gridNum/2))
        game.snake.append(SnakeCell(col: 0, row: SnakeGame.gridNum/2))
        
        let randomCol: Int = Int(arc4random()) % SnakeGame.gridNum
        let randomRow: Int = Int(arc4random()) % SnakeGame.gridNum
        
        game.fruit = Fruit(col: randomCol, row: randomRow)
        
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            self.game.moveSnake(direction: self.direction)
            self.gridView.snakeCopy = self.game.snake
            self.gridView.fruitCopy = self.game.fruit
            self.gridView.setNeedsDisplay()
        }
    }
    
    @IBAction func moveUp(_ sender: Any) {
        direction = .north
    }
    
    @IBAction func moveDown(_ sender: Any) {
        direction = .south
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        direction = .west
    }
    
    @IBAction func moveRight(_ sender: Any) {
        direction = .east
    }
}
