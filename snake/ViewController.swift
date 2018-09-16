//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var board = Board()
    
    @IBOutlet var boardView: BoardView!
    
    var timer: Timer?
    var direction: Direction = .down
    
    enum Direction {
        case up
        case down
        case left
        case right
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { (t: Timer) in
            switch self.direction {
            case .up :
                self.board.moveSnakeUp()
            case .down:
                self.board.moveSnakeDown()
            case .left:
                self.board.moveSnakeLeft()
            case .right:
                self.board.moveSnakeRight()
            }
            self.boardView.snakeCells = self.board.snake
            self.boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func moveUp(_ sender: Any) {
        direction = .up
    }
    
    @IBAction func moveDown(_ sender: Any) {
        direction = .down
    }   
    
    @IBAction func moveRight(_ sender: Any) {
        direction = .right
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        direction = .left
    }
}
