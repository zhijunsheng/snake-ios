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
    
    @IBAction func touchLeft(_ sender: UIButton) {
        print("left")
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        print("up")
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        print("down")
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        print("right")
    }
}
