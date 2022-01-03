//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, SnakeDelegate {
    
    var snakeGame = SnakeGame()
    
    @IBOutlet weak var snakeView: SnakeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeView.delegate = self
        
        snakeGame.updateFruit()
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
            self.snakeGame.move(direction: self.snakeGame.direction)
            self.snakeView.setNeedsDisplay()
        }
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let fingerLocation = sender.location(in: snakeView)
        let col: Int = Int((fingerLocation.x - snakeView.gx) / snakeView.cell)
        print(col)
        
        let row: Int = Int((fingerLocation.y - snakeView.gy) / snakeView.cell)
        print(row)
        snakeGame.changeDirection(fingerCol: col, fingerRow: row)
    }
    
    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        return snakeGame.snakeCellAt(col: col, row: row)
    }
    
    func currentFruit() -> Fruit {
        return snakeGame.currentFruit()
    }
}

