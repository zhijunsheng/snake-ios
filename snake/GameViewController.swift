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
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    @IBAction func upArrow(_ sender: Any) {
        boardView.y = 400
        boardView.setNeedsDisplay()
    }
    
    
}

