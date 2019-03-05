import UIKit
class BoardView: UIView {
    let cols     : Int     = 13
    let rows     : Int     = 23
    let boardX   : CGFloat = 20
    let boardY   : CGFloat = 20
    let line     : CGFloat = 19
    override func draw(_ rect: CGRect) {
        let aPath = UIBezierPath()
        for i in 0...rows {
            aPath.move(to: CGPoint(x: boardX, y: boardY + line * CGFloat(i)))
            aPath.addLine(to: CGPoint(x: boardX + line * CGFloat(cols), y: boardY + line * CGFloat(i)))
        }
        for i in 0...cols {
            aPath.move(to: CGPoint(x: boardX + line * CGFloat(i), y: boardY))
            aPath.addLine(to: CGPoint(x: boardX + line * CGFloat(i), y: boardY + line * CGFloat(rows)))
        }
        #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).setStroke()
        aPath.lineWidth = 0.5
        aPath.stroke()
    }
}
