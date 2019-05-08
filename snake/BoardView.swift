import UIKit

class BoardView: UIView {
    
    let cols: Int = 10
    let rows: Int = 15
    let originX: CGFloat = 10
    let originY: CGFloat = 10
    let cellSide: CGFloat = 27
    
    //snake
    var x0: Int = 5
    var y0: Int = 5
    
    var x1: Int = 5
    var y1: Int = 6
    
    var x2: Int = 5
    var y2: Int = 7
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        
        let pencil0 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(x0) * cellSide, y: originY + CGFloat(y0) * cellSide, width: cellSide, height: cellSide), cornerRadius: 4)
        
        let pencil1 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(x1) * cellSide, y: originY + CGFloat(y1) * cellSide, width: cellSide, height: cellSide), cornerRadius: 4)
        
        let pencil2 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(x2) * cellSide, y: originY + CGFloat(y2) * cellSide, width: cellSide, height: cellSide), cornerRadius: 4)
        
        #colorLiteral(red: 0, green: 0.8426381946, blue: 1, alpha: 1).setFill()
        pencil0.fill()
        
        #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setFill()
        pencil1.fill()
        
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        pencil2.fill()
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
