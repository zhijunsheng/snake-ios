import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
  
        let path = UIBezierPath()
         path.lineWidth = 3.5
        
        for i in 0 ..< 10 {
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x: 200, y: 20 + i * 10))
        }
        
        #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1).setStroke()
        path.stroke()
        
      //  let path2 = UIBezierPath()
//      //  path2.lineWidth = 3.5
//       // path2.move(to: CGPoint(x: 20, y: 20))
//        path2.addLine(to: CGPoint(x: 200, y: 40))
//        #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setStroke()
//        path2.stroke()
//
//        let path3 = UIBezierPath()
//        path3.lineWidth = 3.5
//        path3.move(to: CGPoint(x: 20, y: 20))
//        path3.addLine(to: CGPoint(x: 200, y: 60))
//        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setStroke()
//        path3.stroke()
        /*
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 80))
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        path.stroke()
        
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 120))
        #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setStroke()
        path.stroke()
        
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 140))
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        path.stroke()
        
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 160))
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setStroke()
        path.stroke()
        
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 180))
        #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).setStroke()
        path.stroke()
        
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 200))
        #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).setStroke()
        path.stroke()
        
        path.move(to: CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 220))
        #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1).setStroke()
        path.stroke()
        
    */
     
        /*
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 20, y: 20))
        path2.addLine(to: CGPoint(x: 20, y: 120))
        path2.addLine(to: CGPoint(x: 200, y: 120))
        path2.addLine(to: CGPoint(x: 180, y: 20))
        path2.close()
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
        path2.lineWidth = 2.5
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setFill()
        path2.fill()
        path2.stroke()
 
     //=============================================
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 100, y: 70))
        path3.addLine(to: CGPoint(x: 40, y: 240))
        path3.addLine(to: CGPoint(x: 220, y: 240))
        path3.close()
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        path3.lineWidth = 2.5
        #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
        path3.fill()
        path3.stroke()

        */
        
        /*
        print("🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗🎗")
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 30, y: 17+100))
        path.addLine(to: CGPoint(x: 30, y: 200+100))
        path.lineWidth = 11
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setStroke()
         path.stroke()
        
        //=============================================
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 30, y: 17+50))
        path2.addLine(to: CGPoint(x: 30, y: 17+100))
        path2.lineWidth = 11
        #colorLiteral(red: 1, green: 0.9230894609, blue: 0.4512216253, alpha: 1).setStroke()
        path2.stroke()
        
        //=============================================
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 30, y: 200+100))
        path3.addLine(to: CGPoint(x: 30, y: 200+150))
        path3.lineWidth = 11
        #colorLiteral(red: 1, green: 0.9230894609, blue: 0.4512216253, alpha: 1).setStroke()
        path3.stroke()
        
        //=============================================
    
        let snake = NSAttributedString(string: "🐍💐🐍💐🐍💐🐍💐🐍💐🐍")
        for i in 1...10 {
            print("i is \(i)")
            snake.draw(at: CGPoint(x: 50, y: 100 + i * 25))
        }
        */
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
   
        
        
      
        
    }
    

}
