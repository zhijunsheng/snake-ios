//
//  ViewController.swift
//  snake
//
//  Created by Donald Sheng on 2018-01-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var gridView: GridView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    @IBAction func moveUp(_ sender: Any) {
        gridView.snakeRow = gridView.snakeRow - 1
        gridView.setNeedsDisplay()
    }
    
}

