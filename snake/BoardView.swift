import UIKit

class BoardView: UIView {
    
    let side : CGFloat = 28.0
    let rows = 20
    let cols = 12
    let orgX: CGFloat = 20
    let orgY: CGFloat = 50
    
    var snake: [SnakeCell] = [
        SnakeCell(col: 2, row: 1, color: #colorLiteral(red: 1, green: 0.3098039216, blue: 0.2823529412, alpha: 1)),
//        SnakeCell(col: 3, row: 1, color: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)),
//        SnakeCell(col: 3, row: 2, color: #colorLiteral(red: 0.9843137255, green: 1, blue: 0, alpha: 1)),
//        SnakeCell(col: 4, row: 2, color: #colorLiteral(red: 0, green: 0.831372549, blue: 0.1725490196, alpha: 1)),
//        SnakeCell(col: 4, row: 3, color: #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)),
//        SnakeCell(col: 4, row: 4, color: #colorLiteral(red: 0, green: 0.4156862745, blue: 1, alpha: 1)),
//        SnakeCell(col: 3, row: 4, color: #colorLiteral(red: 0.5215686275, green: 0.3764705882, blue: 0.7490196078, alpha: 1))
    ]
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnakeBodys()
    }
    
    func drawSnakeBodys() {
        for cell in snake {
            drawSnakeBody1(roundedRect: CGRect(x: orgX + CGFloat(cell.col) * side, y: orgY + CGFloat(cell.row) * side, width: side, height: side), color:  cell.color)
        }
    }
    
    func drawSnakeBody1(roundedRect: CGRect, color: UIColor) {
        let sB1 = UIBezierPath(roundedRect: roundedRect, cornerRadius: 5)
        color.setFill()
        sB1.fill()
        #colorLiteral(red: 0, green: 0.7529411765, blue: 0.9921568627, alpha: 1).setStroke()
        sB1.stroke()
        
    }
    
    func drawGrid() {
        let path = UIBezierPath()
        for i in 0 ... cols {
            path.move(to: CGPoint(x: orgX + CGFloat(i) * side, y: orgY))
            path.addLine(to: CGPoint(x: orgX + CGFloat(i) * side, y:orgY + CGFloat(rows) * side))
        }
        
        for i in 0 ... rows {
            path.move(to: CGPoint(x: orgX, y: orgY + CGFloat(i) * side))
            path.addLine(to: CGPoint(x: orgX + CGFloat(cols) * side, y: orgY + CGFloat(i) * side))
        }
        
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        path.stroke()
    }
}
