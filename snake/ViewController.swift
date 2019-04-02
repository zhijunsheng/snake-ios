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
        
        if boardView.foodRow == boardView.snake[0].row && boardView.foodCol == boardView.snake[0].col {
            
            let newCell = SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row, color: randomColor())
            boardView.snake.append(newCell)
            
            boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
            boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        }
    }
    
    @IBAction func leftButton(_ sender: Any) {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col - 1, row: boardView.snake[0].row, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
        
        if boardView.foodRow == boardView.snake[0].row && boardView.foodCol == boardView.snake[0].col {
            
            let newCell = SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row, color: randomColor())
            boardView.snake.append(newCell)
            
            boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
            boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        }
    }
    
    @IBAction func downButton(_ sender: Any) {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row + 1, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
        
        if boardView.foodRow == boardView.snake[0].row && boardView.foodCol == boardView.snake[0].col {

            let newCell = SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row, color: randomColor())
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
        
        if boardView.foodRow == boardView.snake[0].row && boardView.foodCol == boardView.snake[0].col {
            
            let newCell = SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row, color: randomColor())
            boardView.snake.append(newCell)
            
            boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
            boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        }
    }
    
    func randomColor() -> UIColor {
        let rdRed = CGFloat.random(in: 0.6..<1)
        let rdGreen = CGFloat.random(in: 0..<0.6)
        let rdBlue = CGFloat.random(in: 0..<0.6)
        
        let color = UIColor(red: rdRed, green: rdGreen, blue: rdBlue, alpha: 1)
        return color
    }
}
