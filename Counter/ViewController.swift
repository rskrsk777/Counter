// Counter.app

import UIKit

class ViewController: UIViewController {

    var result: UILabel!
    var tapButton: UIButton!
    var resetButton: UIButton!
    var tapNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // result
        result = UILabel()
        result.text = "0"
        result.font = UIFont.systemFont(ofSize: 100)
        result.textAlignment = .center
        result.sizeToFit()
        result.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        view.addSubview(result)
        
        // tapButton
        tapButton = UIButton()
        tapButton.setTitle("Tap", for: .normal)
        tapButton.titleLabel?.textColor = .white
        tapButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        tapButton.backgroundColor = .blue
        tapButton.layer.cornerRadius = 10
        tapButton.frame.size = CGSize(width: 80, height: 60)
        tapButton.frame.origin = CGPoint(x: 100, y: result.frame.origin.y + result.frame.size.height + 50)
        tapButton.addTarget(self, action: #selector(self.tapAddResult(_:)), for: .touchDown)
        view.addSubview(tapButton)
        
        // resetButton
        resetButton = UIButton()
        resetButton.setTitle("Reset", for: .normal)
        resetButton.titleLabel?.textColor = .white
        resetButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        resetButton.backgroundColor = .red
        resetButton.layer.cornerRadius = 10
        resetButton.frame.size = CGSize(width: 80, height: 60)
        resetButton.frame.origin = CGPoint(x: UIScreen.main.bounds.width - (resetButton.frame.size.width + 100), y: result.frame.origin.y + result.frame.height + 50)
        resetButton.addTarget(self, action: #selector(self.resetResult(_:)), for: .touchDown)
        view.addSubview(resetButton)
    }
    
    @objc func tapAddResult(_ sender: UIButton) {
        result.text = "\(Int(result.text!)! + 1)"
        result.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        result.sizeToFit()
    }
    
    @objc func resetResult(_ sender: UIButton) {
        result.text = "0"
    }
}

