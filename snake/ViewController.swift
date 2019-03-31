import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
    }
    
    
    @IBAction func touchUp(_ sender: UIButton) {
        print("touchUp")
        var newSnake : [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row - 1))
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row))
        }
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
        
        if boardView.foodCol == boardView.snake[0].col && boardView.foodRow == boardView.snake[0].row {
            print("🔱🔱🔱🔱")
        }
        
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
        if boardView.foodCol == boardView.snake[0].col && boardView.foodRow == boardView.snake[0].row {
            print("🔱🔱🔱🔱")
        }
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
        if boardView.foodCol == boardView.snake[0].col && boardView.foodRow == boardView.snake[0].row {
            print("🔱🔱🔱🔱")
        }
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
        if boardView.foodCol == boardView.snake[0].col && boardView.foodRow == boardView.snake[0].row {
            print("🔱🔱🔱🔱")
        }
    }
}
