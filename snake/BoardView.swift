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
        let rows = 7
        
        for i in 0 ... rows {
            path.move(to: CGPoint(x: 10, y: i * 10 + 100))
            path.addLine(to: CGPoint(x: 300, y: i * 10 + 100))
        }
        
        path.stroke()
        print("---------------")
    }

}

//homework finish grid
