import UIKit

class BoardView: UIView {
    
    let cols: Int = 10
    let rows: Int = 15
    let originX: CGFloat = 10
    let originY: CGFloat = 10
    let cellSide: CGFloat = 27

    var snake: [Point] = [
        Point(col: 4, row: 5), // snake[0]
        Point(col: 5, row: 5), // snake[1]
        Point(col: 5, row: 6), // snake[2]
        Point(col: 6, row: 6),
        Point(col: 7, row: 6),
    ]

    override func draw(_ rect: CGRect) {
        drawGrid()
        
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
