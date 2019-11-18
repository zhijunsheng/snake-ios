//
//  GameView.swift
//  snake
//
//  Created by Angie Yan on 2019-11-18.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let bPath = UIBezierPath()
        bPath.move(to: CGPoint(x: 0, y: 0))
        bPath.addLine(to: CGPoint(x: 100, y: 100))
        #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setStroke()
        bPath.stroke()
        // Drawing code
    }
 

}
