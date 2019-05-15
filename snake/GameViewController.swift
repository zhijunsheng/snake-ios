import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    
    @IBAction func touchLeft(_ sender: UIButton) {
        if boardView.x0 > 0 {
            boardView.x2 = boardView.x1
            boardView.y2 = boardView.y1
            boardView.x1 = boardView.x0
            boardView.y1 = boardView.y0
            boardView.x0 -= 1
            boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func touchUp(_ sender: UIButton) {
        if boardView.y0 > 0 {
            boardView.x2 = boardView.x1
            boardView.y2 = boardView.y1
            boardView.x1 = boardView.x0
            boardView.y1 = boardView.y0
            boardView.y0 -= 1
            boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        if boardView.y0 < 14 {
            boardView.x2 = boardView.x1
            boardView.y2 = boardView.y1
            boardView.x1 = boardView.x0
            boardView.y1 = boardView.y0
            boardView.y0 += 1
            boardView.setNeedsDisplay()
        }
    }
    
    @IBAction func touchRight(_ sender: UIButton) {
        if boardView.x0 < 9 {
            boardView.x2 = boardView.x1
            boardView.y2 = boardView.y1
            boardView.x1 = boardView.x0
            boardView.y1 = boardView.y0
            boardView.x0 += 1
            boardView.setNeedsDisplay()
        }
    }
}
