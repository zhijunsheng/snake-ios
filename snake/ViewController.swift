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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("rows")
        
        boardView.snk = board.snake
    }
    
}

