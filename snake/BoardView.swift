import UIKit

class BoardView: UIView {
    
    let side : CGFloat = 20.0
    let rows = 20
    let cols = 12
    let orgX: CGFloat = 100
    let orgY: CGFloat = 100
    
    override func draw(_ rect: CGRect) {
        drawGrid()
    }
    
    func drawGrid() {
        let h8 = UIBezierPath()
        for i in 0 ... cols {
            h8.move(to: CGPoint(x: orgX + CGFloat(i) * side, y: orgY))
            h8.addLine(to: CGPoint(x: orgX + CGFloat(i) * side, y:orgY + CGFloat(rows) * side))
        }
        
        for i in 0 ... rows {
            h8.move(to: CGPoint(x: orgX, y: orgY + CGFloat(i) * side))
            h8.addLine(to: CGPoint(x: orgX + CGFloat(cols) * side, y: orgY + CGFloat(i) * side))
        }
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        h8.stroke()
    }
}
