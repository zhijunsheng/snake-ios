//
//  SnakeView.swift
//  snake
//
//  Created by Fergus Chen on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {

    let xcode: CGFloat = 23
    let apple: CGFloat = 100
    let paper: CGFloat = 150

    override func draw(_ rect: CGRect) {
        let  pencil = UIBezierPath()
        
        for i in 0 ..< 15 {
            pencil.move(to: CGPoint(x: apple , y:  paper + CGFloat(i) * xcode)) 
            pencil.addLine(to: CGPoint(x: apple + xcode * 20, y: paper + CGFloat(i) * xcode))
        }
        
        for i in 0 ..< 21 {
            pencil.move(to: CGPoint(x:  apple + CGFloat(i) * xcode, y: paper))
            pencil.addLine(to: CGPoint(x:  apple + CGFloat(i) * xcode, y: paper + 14 * xcode))
        }
        
        pencil.stroke()
    }
}
