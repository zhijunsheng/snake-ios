import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    
    var flyingSnake = 3
    var timer1st: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
        boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        
        timer1st = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (t_) in
            if self.flyingSnake == 0 {
                self.upFlying()
            } else if self.flyingSnake == 1 {
                self.leftFlying()
            } else if self.flyingSnake == 2 {
                self.downFlying()
            } else if self.flyingSnake == 3 {
                self.rightFlying()
            }
            
            self.food()
        }
    }
    
    @IBAction func upButton(_ sender: Any) {
        flyingSnake = 0
    }
    
    func food() {
        if boardView.foodRow == boardView.snake[0].row && boardView.foodCol == boardView.snake[0].col {
            
            let newCell = SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row, color: randomColor())
            boardView.snake.append(newCell)
            
            boardView.foodRow = Int(arc4random_uniform(UInt32(boardView.rows)))
            boardView.foodCol = Int(arc4random_uniform(UInt32(boardView.cols)))
        }
    }
    
    func upFlying() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row - 1, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        if isSnakeDead() {
            resetGame()
            boardView.setNeedsDisplay()
            return
        }
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func leftButton(_ sender: Any) {
        flyingSnake = 1
    }
    
    func leftFlying() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col - 1, row: boardView.snake[0].row, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        if isSnakeDead() {
            resetGame()
            boardView.setNeedsDisplay()
            return
        }
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func downButton(_ sender: Any) {
        flyingSnake = 2
    }
    
    func downFlying() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col, row: boardView.snake[0].row + 1, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        if isSnakeDead() {
            resetGame()
            boardView.setNeedsDisplay()
            return
        }
        
        boardView.setNeedsDisplay()
    }
    
    @IBAction func rightButton(_ sender: Any) {
        flyingSnake = 3
    }
    
    func rightFlying() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: boardView.snake[0].col + 1, row: boardView.snake[0].row, color: boardView.snake[0].color))
        
        for i in 0..<boardView.snake.count - 1 {
            newSnake.append(SnakeCell(col: boardView.snake[i].col, row: boardView.snake[i].row , color: boardView.snake[i + 1].color))
        }
        
        boardView.snake = newSnake
        
        if isSnakeDead() {
            resetGame()
            boardView.setNeedsDisplay()
            return
        }
        
        boardView.setNeedsDisplay()
    }
    
    func isSnakeDead() -> Bool {
        if boardView.snake[0].row > boardView.rows ||
            boardView.snake[0].col >= boardView.cols ||
            boardView.snake[0].row < 0 ||
            boardView.snake[0].col < 0  {
            return true
        }
        
        return false
    }
    
    func randomColor() -> UIColor {
        let rdRed = CGFloat.random(in: 0.6..<1)
        let rdGreen = CGFloat.random(in: 0..<0.6)
        let rdBlue = CGFloat.random(in: 0..<0.6)
        
        let color = UIColor(red: rdRed, green: rdGreen, blue: rdBlue, alpha: 1)
        return color
    }
    
    func resetGame() {
        timer1st.invalidate()
        boardView.snake = [
            SnakeCell(col: 2, row: 1, color: #colorLiteral(red: 0.877359709, green: 1, blue: 0.621459494, alpha: 1)),
            SnakeCell(col: 3, row: 1, color: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))]
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (asw_edf) in
            self.timer1st = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (t_) in
                if self.flyingSnake == 0 {
                    self.upFlying()
                } else if self.flyingSnake == 1 {
                    self.leftFlying()
                } else if self.flyingSnake == 2 {
                    self.downFlying()
                } else if self.flyingSnake == 3 {
                    self.rightFlying()
                }
                
                self.food()
            }
        }
        
    }
}
