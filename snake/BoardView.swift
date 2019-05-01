import UIKit

class BoardView: UIView {
    
    let cols: Int = 10
    let rows: Int = 19
    let originX: CGFloat = 10
    let originY: CGFloat = 10
    let cellSide: CGFloat = 27
    
    override func draw(_ rect: CGRect) {
       
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
