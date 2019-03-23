import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBAction func touchUp(_ sender: UIButton) {
        print("touchUp")
        let row = boardView.snake[0].row
        let col = boardView.snake[0].col
        boardView.snake.remove(at: 0)
        boardView.snake.remove(at: 0)
        let cell = SnakeCell(col: col, row: row - 1)
        let snackcell1 = SnakeCell(col: col, row: row)
        
        boardView.snake.append(cell)
        boardView.snake.append(snackcell1)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchLeft(_ sender: UIButton) {
        print("touchLeft")
        let col = boardView.snake[0].col
        let row = boardView.snake[0].row
        boardView.snake.remove(at: 0)
        boardView.snake.remove(at: 0)
        let cell = SnakeCell(col: col - 1, row: row)
        let snackcell1 = SnakeCell(col: col, row: row)
        
        boardView.snake.append(cell)
        boardView.snake.append(snackcell1)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchDown(_ sender: UIButton) {
        print("touchDown")
        let row0 = boardView.snake[0].row // snake[0], snake[1], snake[2], ...
        let col0 = boardView.snake[0].col
        let row1 = boardView.snake[1].row
        let col1 = boardView.snake[1].col
        boardView.snake.removeAll()
        
        let cell = SnakeCell(col: col0, row: row0 + 1)
        let snakeCell1 = SnakeCell(col: col0, row: row0)
        let snakeCell2 = SnakeCell(col: col1, row: row1)
        
        boardView.snake.append(cell)
        boardView.snake.append(snakeCell1)
        boardView.snake.append(snakeCell2)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchRight(_ sender: UIButton) {
        print("touchRight")
        let col = boardView.snake[0].col
        let row = boardView.snake[0].row
        boardView.snake.remove(at: 0)
        boardView.snake.remove(at: 0)
        let cell = SnakeCell(col: col + 1, row: row)
        let snakeCell1 = SnakeCell(col: col, row: row)

        boardView.snake.append(cell)
        boardView.snake.append(snakeCell1)
        boardView.setNeedsDisplay()
    }
}
