//
//  SnakeView.swift
//  snake
//
//  Created by Fergus Chen on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {


    override func draw(_ rect: CGRect) {
        let  pencil = UIBezierPath()
        
        for i in 0 ..< 15 {
            pencil.move(to: CGPoint(x: 50 , y:  100 + i * 30))
            pencil.addLine(to: CGPoint(x: 650, y: 100 + i * 30))
        }
        
        for i in 0 ..< 21 {
            pencil.move(to: CGPoint(x:  50 + i * 30, y: 100))
            pencil.addLine(to: CGPoint(x:  50 + i * 30, y: 100 + 14 * 30))
        }
        
        pencil.stroke()
    }
}
