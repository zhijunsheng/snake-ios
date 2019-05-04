import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    @IBAction func touchLeft(_ sender: UIButton) {
        boardView.x = boardView.x - 1
        boardView.setNeedsDisplay()
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        boardView.y = boardView.y - 1
        boardView.setNeedsDisplay()
    }
    
    // Down
    // Right ->
}
