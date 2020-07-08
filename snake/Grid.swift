//
//  Grid.swift
//  snake
//
//  Created by Felix Lo on 2020/7/7.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class Grid: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        for i in 0 ..< 15 {
            path.move(to: CGPoint(x: i * 25, y: 100))
            path.addLine(to: CGPoint(x: i * 25, y: 450))
            path.move(to: CGPoint(x: 0, y: i * 25 + 100))
            path.addLine(to: CGPoint(x: 500, y: i * 25 + 100))
        }
        
        path.stroke()
    }
}
