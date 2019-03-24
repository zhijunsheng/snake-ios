import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBAction func touchUp(_ sender: UIButton) {
        print("touchUp")
        let row0 = boardView.snake[0].row
        let col0 = boardView.snake[0].col
        let row1 = boardView.snake[1].row
        let col1 = boardView.snake[1].col
        
        boardView.snake.removeAll()
        
        let cell = SnakeCell(col: col0, row: row0 - 1)
        let snakeCell1 = SnakeCell(col: col0, row: row0)
        let snakeCell2 = SnakeCell(col: col1, row: row1)
        
        boardView.snake.append(cell)
        boardView.snake.append(snakeCell1)
        boardView.snake.append(snakeCell2)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchLeft(_ sender: UIButton) {
        print("touchLeft")
        let col0 = boardView.snake[0].col
        let row0 = boardView.snake[0].row
        let col1 = boardView.snake[1].col
        let row1 = boardView.snake[1].row
        
        boardView.snake.removeAll()
        let cell = SnakeCell(col: col0 - 1, row: row0)
        let snakeCell1 = SnakeCell(col: col0, row: row0)
        let snakeCell2 = SnakeCell(col: col1, row: row1)
        
        boardView.snake.append(cell)
        boardView.snake.append(snakeCell1)
        boardView.snake.append(snakeCell2)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchDown(_ sender: UIButton) {
        print("touchDown")
        let row0 = boardView.snake[0].row
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
        let row0 = boardView.snake[0].row
        let col0 = boardView.snake[0].col
        let row1 = boardView.snake[1].row
        let col1 = boardView.snake[1].col
        
        boardView.snake.removeAll()
        let cell = SnakeCell(col: col0 + 1, row: row0)
        let snakeCell1 = SnakeCell(col: col0, row: row0)
        let snakeCell2 = SnakeCell(col: col1, row: row1)
        
        boardView.snake.append(cell)
        boardView.snake.append(snakeCell1)
        boardView.snake.append(snakeCell2)
        boardView.setNeedsDisplay()
    }
}
