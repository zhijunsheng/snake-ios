//
//  BoardView.swift
//  snake
//
//  Created by Andy Yan on 2019-11-19.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 500, y: 400))
        pencil.addLine(to: CGPoint(x: 600, y: 400))
        
        pencil.stroke()
        
    }
    

}
