import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBAction func touchUp(_ sender: UIButton) {
        print("touchUp")
        let row = boardView.snake[0].row
        let col = boardView.snake[0].col
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col, row: row - 1)
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchLeft(_ sender: UIButton) {
        print("touchLeft")
        let col = boardView.snake[0].col
        let row = boardView.snake[0].row
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col - 1, row: row)
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchDown(_ sender: UIButton) {
        print("touchDown")
        let row = boardView.snake[0].row
        let col = boardView.snake[0].col
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col, row: row + 1)
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
    @IBAction func touchRight(_ sender: UIButton) {
        print("touchRight")
        let col = boardView.snake[0].col
        let row = boardView.snake[0].row
        boardView.snake.remove(at: 0)
        let newCell = SnakeCell(col: col + 1, row: row)
        boardView.snake.append(newCell)
        boardView.setNeedsDisplay()
    }
}
