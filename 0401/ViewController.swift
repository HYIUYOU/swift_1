

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var namelab1: UITextField!
    
    @IBOutlet weak var namelab2: UITextField!
    
    
    @IBOutlet weak var isCPMSwitch: UISwitch!
    
    
    @IBOutlet weak var educationSeg: UISegmentedControl!
    
    @IBOutlet weak var sliderlab1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doneEdit(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    @IBAction func taped(_ sender: UITapGestureRecognizer) {
        namelab1.resignFirstResponder()
        namelab2.resignFirstResponder()
    }
    
    
    @IBAction func sliderchanged(_ sender: UISlider) {
        sliderlab1.text = "\(sender.value)"
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        
        let  u = UserInfo()
        u.name = namelab1.text!
        u.pwd = namelab2.text!
        u.isCPM = isCPMSwitch.isOn
        u.setEduByIndex(index: educationSeg.selectedSegmentIndex)
        u.iq = Int(sliderlab1.text!)!
        
        print(u)
    }
}

