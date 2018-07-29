//
//  BoardView.swift
//  snake
//
//  Created by Sharon Chen on 2018-07-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let rows = 18
        let cols = 10
        
        for i in 0 ... rows {
            path.move(to: CGPoint(x: 0, y: i * 30 + 30))
            path.addLine(to: CGPoint(x: 300, y: i * 30 + 30))
        }
        
        for n in 0 ... cols {
            path.move(to: CGPoint(x: n * 30 + 30, y: 30 ))
            path.addLine(to: CGPoint(x: n * 30 + 30, y: 600))
        }
        
        path.stroke()
        print("---------------")
    }

}

//homework finish grid
