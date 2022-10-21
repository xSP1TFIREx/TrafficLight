import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        buttonLabel.layer.cornerRadius = 10
        buttonLabel.setTitle("Start", for: .normal)
        
        updateUI()
        
        
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        changeLight()
        buttonLabel.setTitle("Next light", for: .normal)
        
    }
    
    func updateUI() {
        redLight.alpha = 0.2
        yellowLight.alpha = 0.2
        greenLight.alpha = 0.2
    }
    
    func changeLight() {
       
        if redLight.alpha == 1 {
            updateUI()
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            updateUI()
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            updateUI()
            redLight.alpha = 1
        } else {
            redLight.alpha = 1
        }
        
    }
    
}

