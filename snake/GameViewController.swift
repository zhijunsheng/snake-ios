import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    @IBAction func touchLeft(_ sender: UIButton) {
        var newSnake: [Point] = []
        let oldHead = boardView.snake[0]
        let newHead = Point(col: oldHead.col - 1, row: oldHead.row)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        var newSnake: [Point] = []
        let oldHead = boardView.snake[0]
        let newHead = Point(col: oldHead.col, row: oldHead.row - 1)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        var newSnake: [Point] = []
        let oldHead = boardView.snake[0]
        let newHead = Point(col: oldHead.col, row: oldHead.row + 1)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        var newSnake: [Point] = []
        let oldHead = boardView.snake[0]
        let newHead = Point(col: oldHead.col + 1, row: oldHead.row)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        boardView.snake = newSnake
        
        boardView.setNeedsDisplay()
    }
}
