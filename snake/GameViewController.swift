import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.appleX = Int(arc4random() % UInt32(boardView.cols))
        boardView.appleY = Int(arc4random() % UInt32(boardView.rows))
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        let oldHead = boardView.snake[0]
        if oldHead.col == 0 {
            return
        }
        
        var newSnake: [Point] = []
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
        let oldHead = boardView.snake[0]
        if oldHead.row == 0 {
            return
        }
        
        var newSnake: [Point] = []
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
        let oldHead = boardView.snake[0]
        if oldHead.row == boardView.rows - 1 {
            return
        }
        
        var newSnake: [Point] = []
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
        let oldHead = boardView.snake[0]
        if oldHead.col == boardView.cols - 1 {
            return
        }
        
        var newSnake: [Point] = []
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
