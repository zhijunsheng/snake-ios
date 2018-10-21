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
    let foodArr = Array("🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🍍🥥🥝🍅🍆🥑🥦🥒🌶🌽🥕🥔🍠🥐🍞🥖🥨🧀🥚🍳🥞🥓🥩🍗🍖🌭🍔🍟🍕🥪🥙🌮🌯🥗🥘🥫🍝🍜🍲🍛💣🍣🍱🥟🍤🍙🍚🍘🍥🥠🍢🍡🍧🍨🍦🥧🎾🍰🎂🍮🍭🍬🔪🍫🍿🍩🍪🌰🥜🍯🥛🍼☕️🍵🥤🍺🍻🥂🍷🥃🍸🍹🍾")
    
    var side: CGFloat = -1.0
    private let headColor = UIColor(red: 0/255,
                            green: 190/255,
                            blue: 50/255,
                            alpha: 0.9)
    
    private let bodyColor = UIColor(red: 0/255,
                            green: 175/255,
                            blue: 0/255,
                            alpha: 1.0)
    
    
    private let tailColor = UIColor(red: 249/255,
                            green: 233/255,
                            blue: 117/255,
                            alpha: 1)
    
    var snakeCells = [CGPoint]()
    var snake = [Point]()
    var foodCells = [CGPoint]()
    
    
    var originX: CGFloat = 0.0
    var originY: CGFloat = 0.0
    
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
        drawFood()
    }
    // private
    private func drawGrid() {
        // horizontally draw some lines
        
        for i in 0...rows {
            drawLine(fromX: originX,
                     fromY: originY + CGFloat(i) * side,
                     toX: originX + CGFloat(cols) * side,
                     toY: originY + CGFloat(i) * side,
                     color: .lightGray)
        }
        
        // vertically draw some lines
        
        for i in 0...cols {
            drawLine(fromX: originX + CGFloat(i) * side,
                     fromY: originY,
                     toX: originX + CGFloat(i) * side,
                     toY: originY + CGFloat(rows) * side,
                     color: .lightGray)
        }
    }
    
    private func drawSnake() {
        // snake -> 🐍
        
        for i in snakeCells.indices {
            if i == 0 {
                drawRect(x: snakeCells[i].x, y: snakeCells[i].y, width: side, height: side, color: headColor)
            } else {
                drawRect(x: snakeCells[i].x, y: snakeCells[i].y, width: side, height: side, color: bodyColor)
            }
        }
    }
    
   private func drawFood() {
        /// food Breakfast🍳🥚lunch🍔🍕🍝🍟snack🍰🍿🍭🍬dinner🍩🍫 //👍
    
        for foodCell in foodCells {
            let rand = Int(arc4random()) % foodArr.count
            let paragraphStyle = NSMutableParagraphStyle()
            let attributes = [
                NSAttributedStringKey.paragraphStyle: paragraphStyle,
                NSAttributedStringKey.font: UIFont.systemFont(ofSize: 0.710681691304348 * side),
                ]
            let attributedString = NSAttributedString(string: String(foodArr[rand]), attributes: attributes)
            let stringRect = CGRect(x: foodCell.x, y: foodCell.y, width: side, height: side)
            attributedString.draw(in: stringRect)
        }
    }
    
    private func getFood(numbOfFood: Int) -> [Character] {
        var result = [Character]()
        for _ in 0..<numbOfFood {
            let rand = Int(arc4random()) % foodArr.count
            result.append(foodArr[rand])
        }
        return result
    }
    
    private func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: fromX, y: fromY))
        line.addLine(to: CGPoint(x: toX, y: toY))
        color.setStroke()
        line.stroke()
    }
    
    private func drawRect(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor) {
        let rect = CGRect(x: x, y: y, width: width, height: height)
        let rectangle = UIBezierPath(roundedRect: rect, cornerRadius: 5)
        color.setFill()
        rectangle.fill()
    }
}

