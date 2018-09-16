//
//  BoardView.swift
//  snake
//
//  Created by Peter Shi on 2018-07-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var cols = 0
    var rows = 0 // hi
    
    let side: CGFloat = 23.0
    let headColor = UIColor(red: 0/255,
                            green: 175/255,
                            blue: 0/255,
                            alpha: 0.9)
    
    let tailColor = UIColor(red: 249/255,
                            green: 233/255,
                            blue: 117/255,
                            alpha: 1)
    
    var snakeCells = [CGPoint]()
    var snake = [Point]()
    
    var originX: CGFloat = 0.0
    var originY: CGFloat = 0.0
    
    
    override func draw(_ rect: CGRect) {
        
//        let rect = CGRect(x: 20.0, y: 20.0, width: side, height: side)
//        let rectangle = UIBezierPath(roundedRect: rect, cornerRadius: side * 2)
//        UIColor.red.setFill()
//        rectangle.fill()
//
        
//        originX = (frame.width -  side * CGFloat(cols)) / 2
//        originY = (frame.height - side * CGFloat(rows)) / 3
        
        // horizontally draw some lines
        
        for i in 0...rows {
            drawLine(fromX: originX,
                     fromY: originY + CGFloat(i) * side,
                     toX: originX + CGFloat(cols) * side,
                     toY: originY + CGFloat(i) * side,
                     color: .gray)
        }
        
        // vertically draw some lines
        
        for i in 0...cols {
            drawLine(fromX: originX + CGFloat(i) * side,
                     fromY: originY,
                     toX: originX + CGFloat(i) * side,
                     toY: originY + CGFloat(rows) * side,
                     color: .gray)
        }
        // snake -> 🐍
        
        for i in snakeCells.indices {
            if i == 0 {
                drawRect(x: snakeCells[i].x, y: snakeCells[i].y, width: side, height: side, color: headColor)
            } else {
           drawRect(x: snakeCells[i].x, y: snakeCells[i].y, width: side, height: side, color: headColor)
            }
        }
        
       
        // food 🍳🥚🍔🍕🍝🍟🍰🍿🍭🍬🍩🍫👍
//        let food = "🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🍍🥥🥝🍅🍆🥑🥦🥒🌶🌽🥕🥔🍠🥐🍞🥖🥨🧀🥚🍳🥞🥓🥩🍗🍖🌭🍔🍟🍕🥪🥙🌮🌯🥗🥘🥫🍝🍜🍲🍛💣🍣🍱🥟🍤🍙🍚🍘🍥🥠🍢🍡🍧🍨🍦🥧🎾🍰🎂🍮🍭🍬🍫🍿🍩🍪🌰🥜🍯🥛🍼☕️🍵🥤🍺🍻🥂🍷🥃🍸🍹🍾"
//        for _ in 0...2{
//            let foodString = Array(food)
//            let rand = Int(arc4random()) % foodString.count
//            let randX = CGFloat(Int(arc4random()) % cols) * side + originX
//            let randY = CGFloat(Int(arc4random()) % rows) * side + originY
//            let paragraphStyle = NSMutableParagraphStyle()
//            let attributes = [
//                NSAttributedStringKey.paragraphStyle: paragraphStyle,
//                NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16.3456789),
//                ]
//            let attributedString = NSAttributedString(string: String(foodString[rand]), attributes: attributes)
//            let stringRect = CGRect(x: randX, y: randY, width: 23, height: 23)
//            attributedString.draw(in: stringRect)
//        }
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: fromX, y: fromY))
        line.addLine(to: CGPoint(x: toX, y: toY))
        color.setStroke()
        line.stroke()
    }
    
    func drawRect(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor) {
        let rect = CGRect(x: x, y: y, width: width, height: height)
        let rectangle = UIBezierPath(roundedRect: rect, cornerRadius: 5)
        color.setFill()
        rectangle.fill()
    }
}

