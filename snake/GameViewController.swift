import UIKit

// use finger to control the snake head
// the snake has to eat more than 1 fruit to grow
// better to have different fruits
// let snake die when touching edges √
class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.appleX = Int(arc4random() % UInt32(boardView.cols))
        boardView.appleY = Int(arc4random() % UInt32(boardView.rows))
    }
    
    @IBAction func touchLeft(_ sender: UIButton) {
        let oldHead: Point = boardView.snake[0]
        if oldHead.col == 0 {
            restartGame()
            boardView.setNeedsDisplay()
            return
        }
        
        var newSnake: [Point] = []
        let newHead: Point = Point(col: oldHead.col - 1, row: oldHead.row)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        
        if newHead.col == boardView.appleX && newHead.row == boardView.appleY {
            boardView.appleX = Int(arc4random() % UInt32(boardView.cols))
            boardView.appleY = Int(arc4random() % UInt32(boardView.rows))
            newSnake.append(boardView.snake[boardView.snake.count - 1])
        }
        
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        let oldHead = boardView.snake[0]
        if oldHead.row == 0 {
            restartGame()
            boardView.setNeedsDisplay()
            return
        }
        
        var newSnake: [Point] = []
        let newHead = Point(col: oldHead.col, row: oldHead.row - 1)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        
        if newHead.col == boardView.appleX && newHead.row == boardView.appleY {
            boardView.appleX = Int(arc4random() % UInt32(boardView.cols))
            boardView.appleY = Int(arc4random() % UInt32(boardView.rows))
            newSnake.append(boardView.snake[boardView.snake.count - 1])
        }
        
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        let oldHead = boardView.snake[0]
        if oldHead.row == boardView.rows - 1 {
            restartGame()
            boardView.setNeedsDisplay()
            return
        }
        
        var newSnake: [Point] = []
        let newHead = Point(col: oldHead.col, row: oldHead.row + 1)
        newSnake.append(newHead)
        
        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        
        if newHead.col == boardView.appleX && newHead.row == boardView.appleY {
            boardView.appleX = Int(arc4random() % UInt32(boardView.cols))
            boardView.appleY = Int(arc4random() % UInt32(boardView.rows))
            newSnake.append(boardView.snake[boardView.snake.count - 1])
        }
        
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        let oldHead = boardView.snake[0]
        if oldHead.col == boardView.cols - 1 {
            restartGame()
            boardView.setNeedsDisplay()
            return
        }
        
        var newSnake: [Point] = []
        let newHead = Point(col: oldHead.col + 1, row: oldHead.row)
        newSnake.append(newHead)

        for i in 1..<boardView.snake.count {
            let cell = boardView.snake[i - 1]
            newSnake.append(cell)
        }
        
        if newHead.col == boardView.appleX && newHead.row == boardView.appleY{
            boardView.appleX = Int(arc4random() % UInt32(boardView.cols))
            boardView.appleY = Int(arc4random() % UInt32(boardView.rows))
            newSnake.append(boardView.snake[boardView.snake.count - 1])
        }
        
        boardView.snake = newSnake
        boardView.setNeedsDisplay()
    }
    
    func restartGame() {
        boardView.snake = [
            Point(col: 4, row: 5),
            Point(col: 5, row: 5),
            Point(col: 5, row: 6),
            Point(col: 6, row: 6),
            Point(col: 7, row: 6),
        ]
    }
}
// succeed prey expert cover cloak
