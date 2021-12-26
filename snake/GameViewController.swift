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
    @IBOutlet weak var gameOver: UILabel!
    
    var direction: Direction = .east
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game.snake.append(SnakeCell(col: 1, row: SnakeGame.gridNum/2))
        game.snake.append(SnakeCell(col: 0, row: SnakeGame.gridNum/2))
        
        let randomCol: Int = Int(arc4random()) % SnakeGame.gridNum
        let randomRow: Int = Int(arc4random()) % SnakeGame.gridNum
        
        game.fruit = Fruit(col: randomCol, row: randomRow)
        
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.game.moveSnake(direction: self.direction)
            self.gridView.snakeCopy = self.game.snake
            self.gridView.fruitCopy = self.game.fruit
            if self.game.gameOver {
                self.gameOver.text = "Game Over!"
                self.gameOver.backgroundColor = UIColor.white
            }
            self.gridView.setNeedsDisplay()
        }
    }
    
    @IBAction func playAgain(_ sender: Any) {
        
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: gridView)
        let col: Int = Int((location.x - gridView.xStart)/gridView.cell)
        let row: Int = Int((location.y - gridView.yStart)/gridView.cell)
        if gridView.snakeCopy[0].row > row && (gridView.snakeCopy[0].col > col - 5 && gridView.snakeCopy[0].col < col + 5) {
            direction = .north
        } else if gridView.snakeCopy[0].row < row && (gridView.snakeCopy[0].col > col - 5 && gridView.snakeCopy[0].col < col + 5) {
            direction = .south
        } else if gridView.snakeCopy[0].col < col && (gridView.snakeCopy[0].row > row - 5 && gridView.snakeCopy[0].row < row + 5) {
            direction = .east
        } else if gridView.snakeCopy[0].col >  col && (gridView.snakeCopy[0].row > row - 5 && gridView.snakeCopy[0].row < row + 5) {
            direction = .west
        }
    }
}
