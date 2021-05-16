//
//  BoardView.swift
//  snake
//
//  Created by Harry Shen on 5/16/21.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let path = UIBezierPath()
        
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 1000, y: 1000))
        
        
        path.lineWidth = 5
        #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1).setStroke()
        path.stroke()
        
        for i in 0..<10 {
            print("i = \(i)")
        }
    }
    

}
