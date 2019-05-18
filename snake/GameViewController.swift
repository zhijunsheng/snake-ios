import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    @IBAction func touchLeft(_ sender: UIButton) {
//        if boardView.x0 > 0 {
//            boardView.x2 = boardView.x1
//            boardView.y2 = boardView.y1
//            boardView.x1 = boardView.x0
//            boardView.y1 = boardView.y0
//            boardView.x0 -= 1
//            boardView.setNeedsDisplay()
//        }
        let cell0 = boardView.snake[0] // x0: cell0.col, y0: cell0.row
//        let cell1 = boardView.snake[1] // x1: cell1.col, y1: cell1.row
//        let cell2 = boardView.snake[2] // x2: cell2.col, y2: cell2.row
        
        var newSnake: [Point] = []
        let snakeHead = Point(col: cell0.col - 1, row: cell0.row)
        newSnake.append(snakeHead)
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i]
            newSnake.append(cell)
        }
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
//        if boardView.y0 > 0 {
//            boardView.x2 = boardView.x1
//            boardView.y2 = boardView.y1
//            boardView.x1 = boardView.x0
//            boardView.y1 = boardView.y0
//            boardView.y0 -= 1
//            boardView.setNeedsDisplay()
        
//        }
        
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
//        if boardView.y0 < 14 {
//            boardView.x2 = boardView.x1
//            boardView.y2 = boardView.y1
//            boardView.x1 = boardView.x0
//            boardView.y1 = boardView.y0
//            boardView.y0 += 1
//            boardView.setNeedsDisplay()
//        }
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
//        if boardView.x0 < 9 {
//            boardView.x2 = boardView.x1
//            boardView.y2 = boardView.y1
//            boardView.x1 = boardView.x0
//            boardView.y1 = boardView.y0
//            boardView.x0 += 1
//            boardView.setNeedsDisplay()
//        }
    }
}
