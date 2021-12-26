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
    @IBOutlet weak var restartButton: UIButton!
    
    var direction: Direction = .east
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game.reset()
        
        let randomCol: Int = Int(arc4random()) % SnakeGame.gridNum
        let randomRow: Int = Int(arc4random()) % SnakeGame.gridNum
        
        game.fruit = Fruit(col: randomCol, row: randomRow)
        
        gridView.snakeCopy = game.snake
        gridView.fruitCopy = game.fruit
        gameOver.textColor = .white
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.game.moveSnake(direction: self.direction)
            self.gridView.snakeCopy = self.game.snake
            self.gridView.fruitCopy = self.game.fruit
            if self.game.gameOver {
                self.gameOver.textColor = .black
                
            }
            self.gridView.setNeedsDisplay()
        }
    }
    
    @IBAction func playAgain(_ sender: Any) {
        game.reset()
        direction = .east
        gameOver.textColor = .white
        gridView.setNeedsDisplay()
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: gridView)
        let col: Int = Int((location.x - gridView.xStart)/gridView.cell)
        let row: Int = Int((location.y - gridView.yStart)/gridView.cell)
        if gridView.snakeCopy[0].row > row && (direction == .west || direction == .east) {
            direction = .north
        } else if gridView.snakeCopy[0].row < row && (direction == .west || direction == .east) {
            direction = .south
        } else if gridView.snakeCopy[0].col < col && (direction == .north || direction == .south) {
            direction = .east
        } else if gridView.snakeCopy[0].col > col && (direction == .north || direction == .south) {
            direction = .west
        }  // a(b + c) = ab + ac
        // a && ( b || c) = a && b || a && c
    }
}
