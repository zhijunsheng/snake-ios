import UIKit

class BoardView: UIView {
    
    let cols: Int = 8
    let rows: Int = 28
    let originX: CGFloat = 10
    let originY: CGFloat = 10
    let cellSide: CGFloat = 10
    
    override func draw(_ rect: CGRect) {
       
        let pen = UIBezierPath()
        
        for i in 0..<rows + 1 {
            pen.move(to: CGPoint(x: originX, y: cellSide * CGFloat(i) + originY))
            pen.addLine(to: CGPoint(x: originX + CGFloat(cols) * cellSide, y: cellSide * CGFloat(i) + originY))
        }
        
        for i in 0..<cols + 1 {
            pen.move(to: CGPoint(x: cellSide * CGFloat(i) + originX, y: originY))
            pen.addLine(to: CGPoint(x: cellSide * CGFloat(i) + originX, y: originY + CGFloat(rows) * cellSide))
        }
        
        pen.stroke()
        
    }

}
