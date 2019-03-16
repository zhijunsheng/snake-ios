import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBAction func upButton(_ sender: Any) {
        let col = boardView.snake[0].col
        let row = boardView.snake[0].row
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col, row: row - 1, color: #colorLiteral(red: 1, green: 0.3098039216, blue: 0.2823529412, alpha: 1))
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
    
    @IBAction func leftButton(_ sender: Any) {
        let row = boardView.snake[0].row
        let col = boardView.snake[0].col
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col - 1, row: row, color: #colorLiteral(red: 1, green: 0.3098039216, blue: 0.2823529412, alpha: 1))
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
    
    @IBAction func downButton(_ sender: Any) {
        let col = boardView.snake[0].col
        let row = boardView.snake[0].row
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col, row: row + 1, color: #colorLiteral(red: 1, green: 0.3098039216, blue: 0.2823529412, alpha: 1))
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
    @IBAction func rightButton(_ sender: Any) {
        let row = boardView.snake[0].row
        let col = boardView.snake[0].col
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col + 1, row: row, color: #colorLiteral(red: 1, green: 0.3098039216, blue: 0.2823529412, alpha: 1))
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
}

