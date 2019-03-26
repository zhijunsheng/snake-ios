import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBAction func upButton(_ sender: Any) {
        
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row - 1, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func leftButton(_ sender: Any) {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col - 1, row: boardView.snake[0].row, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func downButton(_ sender: Any) {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row + 1, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func rightButton(_ sender: Any) {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col + 1, row: boardView.snake[0].row, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
}
