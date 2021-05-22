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
        
        for i in 0..<8 {
            path.move(to: CGPoint(x: 100, y: i * 50 + 100))
            path.addLine(to: CGPoint(x: 100 + 6 * 50, y: CGFloat(i) * 50 + 100))
        }
        
        for n in 0..<7 {
            path.move(to: CGPoint(x: CGFloat(n) * 50 + 100, y: 100))
            path.addLine(to: CGPoint(x: CGFloat(n) * 50 + 100, y: 100 + 7 * 50))
        }
        path.lineWidth = 5
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        path.stroke()
    }
    

}
