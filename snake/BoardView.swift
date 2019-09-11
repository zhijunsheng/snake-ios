import UIKit
class BoardView: UIView {
    let cols     : Int         = 21
    let rows     : Int         = 21
    var boardX   : CGFloat     = 20
    var boardY   : CGFloat     = 20
    let line     : CGFloat     = 29
    var foodCol  : Int         = -67
    var foodRow  : Int         = -90
    var snake    : [SnakeCell] = [
        SnakeCell(col: 6, row: 7),// sna
        SnakeCell(col: 7, row: 7),
        SnakeCell(col: 7, row: 8),
        SnakeCell(col: 8, row: 8),
        SnakeCell(col: 8, row: 9)
    ]
    override func draw(_ rect: CGRect) {
        boardX = (bounds.width - line * CGFloat(cols)) / 2
        boardY = (bounds.height - line * CGFloat(rows)) / 2
        //        horizontal: left: 3.2cm, right: 3.2cm, equal: true
        //        vertical: top: 2.75cm, bottom: 2.75cm, equal: true
        drawSnakeCell(x: boardX + line * CGFloat(foodCol), y: boardY + line * CGFloat(foodRow), color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        
        drawGrid()
        drawSnake()
    }
    func drawSnake() {
        drawSnakeCell(x: boardX + line * CGFloat(snake[0].col), y: boardY + line * CGFloat(snake[0].row), color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        for i in 1..<snake.count { // snake[i],
            drawSnakeCell(x: boardX + line * CGFloat(snake[i].col), y: boardY + line * CGFloat(snake[i].row), color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        }
    }
    func drawSnakeCell(x: CGFloat, y: CGFloat, color: UIColor) {
        let bPath = UIBezierPath(roundedRect: CGRect(x: x, y: y, width: line, height: line), cornerRadius: 6)
        color.setFill()
        bPath.fill()
        #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1).setStroke()
        bPath.stroke()
    }
    func drawGrid() {
        print(bounds.width)
        print(bounds.height)
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

