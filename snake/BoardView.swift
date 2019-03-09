import UIKit

class BoardView: UIView {
    
    let side : CGFloat = 28.0
    let rows = 20
    let cols = 12
    let orgX: CGFloat = 20
    let orgY: CGFloat = 50
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnakeBody1(roundedRect: CGRect(x: orgX + 2 * side, y: orgY + side, width: side, height: side))
        drawSnakeBody1(roundedRect: CGRect(x: orgX + 3 * side, y: orgY + side, width: side, height: side))
        drawSnakeBody1(roundedRect: CGRect(x: orgX + 3 * side, y: orgY + 2 * side, width: side, height: side))
        drawSnakeBody1(roundedRect: CGRect(x: orgX + 4 * side, y: orgY + 2 * side, width: side, height: side))
    }
    
    func drawSnakeBody1(roundedRect: CGRect) {
        let sB1 = UIBezierPath(roundedRect: roundedRect, cornerRadius: 5)
        #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1).setFill()
        sB1.fill()
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
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
