//
//  BoardView.swift
//  snake
//
//  Created by Elaine on 2019/5/12.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    let originX:CGFloat = 50
    let originY:CGFloat = 80
    let cellSide:CGFloat = 20
    let cols:Int = 12
    let rows:Int = 17
    
    var snake: [Location] = [
        Location(x: 9, y: 6),
        Location(x: 9, y: 7),
        Location(x: 8, y: 7),
        Location(x: 7, y: 7),
        Location(x: 7, y: 8),
        Location(x: 7, y: 9),
        Location(x: 7, y: 10),
        ]
    
    var cherryLocation : Location  = Location(x: 10, y: 4)
    var cherryString : String = "🍒"
    
    
    
    override func draw(_ rect: CGRect) {
        print(cherryString)
        drawBoard()
        drawSnake()
        drawCherry()
    }
    
    
    func drawCherry() {
        let paragraphStyle = NSMutableParagraphStyle()
        let attributes = [
            NSAttributedStringKey.paragraphStyle: paragraphStyle,
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 1.01 * cellSide),
        ]
        let attrString: NSAttributedString = NSAttributedString(string: cherryString , attributes: attributes)
        attrString.draw(in: CGRect(x:  CGFloat(cherryLocation.x)  * cellSide + originX, y: CGFloat(cherryLocation.y) * cellSide + originY, width: cellSide, height: cellSide))
    }
    
    func drawSnake() {
        for i in 0..<snake.count {
            let cell: Location = snake [i]
            let pencil = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(cell.x) * cellSide, y: originY + CGFloat(cell.y) * cellSide, width: cellSide, height: cellSide), cornerRadius: 3)
            #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1).setFill()
            pencil.fill()
        }
    }
    func drawBoard() {
        let pencil = UIBezierPath()
        for i in 0...rows {
            pencil.move(to: CGPoint(x: originX , y: originY + cellSide * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: originX + cellSide * CGFloat(cols) , y: originY + cellSide * CGFloat (i)) )
        }
        
        for i in 0...cols {
            pencil.move(to: CGPoint(x: originX + cellSide * CGFloat(i) , y: originY ))
            pencil.addLine(to: CGPoint(x: originX + cellSide * CGFloat (i)  , y: originY + cellSide * CGFloat(rows)) )
        }
        pencil.stroke()
    }
}
