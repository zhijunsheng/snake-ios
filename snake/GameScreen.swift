//
//  gameScreen.swift
//  snake
//
//  Created by Grace Huang on 4/19/20.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameScreen: UIView {

    
    override func draw(_ rect: CGRect) {
        grid()
    }
    
    func grid() {
        let pen = UIBezierPath()
        let squareSide = bounds.width / 30
        
        for i in 0..<50 {
            pen.move(to: CGPoint(x: CGFloat(i) * squareSide, y: 0))
            pen.addLine(to: CGPoint(x: CGFloat(i) * squareSide, y: bounds.height))
            
            pen.stroke()
        }
    }

}
