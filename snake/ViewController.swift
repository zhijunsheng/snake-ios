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
    var direction = Direction.up
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.snk = board.snake

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (t) in
            switch self.direction {
            case .up:
                self.board.moveUp()
            case .down:
                self.board.moveDown()
            case .right:
                self.board.moveRight()
            case .left:
                self.board.moveLeft()
            }
            self.boardView.snk = self.board.snake
            self.boardView.setNeedsDisplay()
                
        })
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        direction = .left
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        direction = .right
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        direction = .up
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        direction = .down
    }

}

enum Direction {
    case up
    case down
    case right
    case left
}
