//
//  SnakeView.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-15.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 100, y: 100))
        pencil.addLine(to: CGPoint(x: 50, y: 100))
        pencil.stroke()
        
        
    }
     
     

}
