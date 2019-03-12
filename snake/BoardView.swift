import UIKit
class BoardView: UIView {
    let cols     : Int         = 13
    let rows     : Int         = 18
    let boardX   : CGFloat     = 20
    let boardY   : CGFloat     = 20
    let line     : CGFloat     = 19
    let snake    : [SnakeCell] = [
        SnakeCell(col: 1, row: 1),
        SnakeCell(col: 2, row: 1),
        SnakeCell(col: 2, row: 2),
        SnakeCell(col: 3, row: 2),
        SnakeCell(col: 3, row: 3),
        SnakeCell(col: 3, row: 4)
    ]
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
    }
    func drawSnake() {
        for cell in snake {
            drawSnakeCell(x: boardX + line * CGFloat(cell.col), y: boardY + line * CGFloat(cell.row))
        }
    }
    func drawSnakeCell(x: CGFloat, y: CGFloat) {
        let bPath = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: line, height: line), cornerRadius: 6)
        #colorLiteral(red: 0.2745098039, green: 0, blue: 0.5254901961, alpha: 1).setFill()
        bPath.fill()
        #colorLiteral(red: 0.3176470588, green: 0, blue: 0.5450980392, alpha: 1).setStroke()
        bPath.stroke()
    }
    func drawGrid() {
        let aPath = UIBezierPath()
        for i in 0...rows {
            aPath.move(to: CGPoint(x: boardX, y: boardY + line * CGFloat(i)))
            aPath.addLine(to: CGPoint(x: boardX + line * CGFloat(cols), y: boardY + line * CGFloat(i)))
        }
        for i in 0...cols {
            aPath.move(to: CGPoint(x: boardX + line * CGFloat(i), y: boardY))
            aPath.addLine(to: CGPoint(x: boardX + line * CGFloat(i), y: boardY + line * CGFloat(rows)))
        }
        #colorLiteral(red: 0.8470588235, green: 0.4392156863, blue: 0.6901960784, alpha: 1).setStroke()
        aPath.lineWidth = 0.8
        aPath.stroke()
    }
}
