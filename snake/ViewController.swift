import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBAction func touchUp(_ sender: UIButton) {
        print("touchUp")
        var newSnake : [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row - 1))
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row))
        }
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    @IBAction func touchLeft(_ sender: UIButton) {
        print("touchLeft")
        var newSnake : [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col - 1, row: boardView.snake[0].row))
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row))
        }
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    @IBAction func touchDown(_ sender: UIButton) {
        print("touchDown")
        var newSnake : [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row + 1))
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row))
        }
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    @IBAction func touchRight(_ sender: UIButton) {
        print("touchRight")
        var newSnake : [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col + 1, row: boardView.snake[0].row))
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row))
        }
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
}
