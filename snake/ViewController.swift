import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
        boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
    }
    
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
        
        print(boardView.foodRow)
        print(boardView.foodCol)
        print(boardView.snake[0].row)
        print(boardView.snake[0].col)
        print("~~~~~~~~~~~~~~~~~~~~~~")
        
        if boardView.foodRow == boardView.snake[0].row && boardView.foodCol == boardView.snake[0].col {
            print("yaeh")
            let newCell = SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row, color: #colorLiteral(red: 0.9960784314, green: 0.4015842014, blue: 0, alpha: 1))
            boardView.snake.append(newCell)
            
            boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
            boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        }
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
