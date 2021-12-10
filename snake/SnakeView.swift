//
//  SnakeView.swift
//  snake
//
//  Created by Lambert Lin on 2021/12/10.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {

 
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 12, y: 12))
        pencil.addLine(to: CGPoint(x: 12, y: 538))
        pencil.stroke()
        
        
    }

}
