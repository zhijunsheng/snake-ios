import UIKit

class BoardView: UIView {
    
    let cols: Int = 10
    let rows: Int = 15
    let originX: CGFloat = 10
    let originY: CGFloat = 10
    let cellSide: CGFloat = 27
    
    //snake
    var x: Int = 7
    var y: Int = 4
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        
        let pencil = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(x) * cellSide, y: originY + CGFloat(y) * cellSide, width: cellSide, height: cellSide), cornerRadius: 4)
        
        #colorLiteral(red: 0, green: 0.8426381946, blue: 1, alpha: 1).setFill()
        pencil.fill()
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
