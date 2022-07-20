//
//  timerViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-20.
//

import UIKit

class timerViewController: UIViewController {
    @IBOutlet weak var helpButton: UIButton!

    @IBOutlet weak var wmTextField: UITextField!
    @IBOutlet weak var wsTextField: UITextField!
    @IBOutlet weak var bmTextField: UITextField!
    @IBOutlet weak var bsTextField: UITextField!
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var mins = 0
    var secs = 0
    var count = 0
    var minsLabel = ""
    var secsLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTimer(_ sender: Any) {
        timer.invalidate()
        mins = Int(wmTextField.text!) ?? 0
        secs = Int(wsTextField.text!) ?? 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerViewController.setTimer), userInfo: nil, repeats: true)
        count = mins * 60 + secs
    }
    
    @objc func setTimer() {
        if count >= 0 {
            print(mins)
            print(secs)
            let minutes = String(count / 60)
            let seconds = String(count % 60)
            
            minsLabel = String(minutes)
            secsLabel = String(seconds)
            if String(minutes).count == 1 {
                minsLabel = "0\(minutes)"
            }
            if String(seconds).count == 1 {
                secsLabel = "0\(seconds)"
            }
            
            timerLabel.text = minsLabel + " : " + secsLabel
            count -= 1
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
