import UIKit

class BoardView: UIView {
    
    let cols: Int = 23
    let rows: Int = 25
    let originX: CGFloat = 20
    let originY: CGFloat =  15
    let cellSide: CGFloat = 30
    
    var appleX: Int = 5
    var appleY: Int = 3

    var snake: [Point] = [
        Point(col: 4, row: 5),
        Point(col: 5, row: 5),
        Point(col: 5, row: 6),
        Point(col: 6, row: 6),
        Point(col: 7, row: 6),
    ]

    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
        drawFruit()
    }
    
    func drawFruit() {
        let fruit = "🥝"
        let paragraphStyle = NSMutableParagraphStyle()
        let attributes = [
            NSAttributedStringKey.paragraphStyle: paragraphStyle,
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 0.8 *  cellSide),
            ]
        let attrFruit = NSAttributedString(string: fruit, attributes: attributes)
        attrFruit.draw(in: CGRect(x: CGFloat(appleX) * cellSide + originX, y: CGFloat(appleY) * cellSide + originY, width: cellSide, height: cellSide))
    }
    
    func drawSnake() {
        for cell in snake {
            let pen = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(cell.col) * cellSide, y: originY + CGFloat(cell.row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 4)
                
            #colorLiteral(red: 0, green: 0.8426381946, blue: 1, alpha: 1).setFill()
            pen.fill()
        }
    }
    
    func drawGrid() {
        let pen = UIBezierPath()
        
        for i in 0...rows {
            pen.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellSide))
            pen.addLine(to: CGPoint(x: originX + CGFloat(cols) * cellSide, y: originY + CGFloat(i) * cellSide))
        }
        
        for i in 0...cols {
            pen.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY ))
            pen.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + CGFloat(rows) * cellSide))
        }
        
        pen.stroke()
    }
    
}
