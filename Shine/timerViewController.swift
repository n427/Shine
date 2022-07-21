//
//  timerViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-20.
//

import UIKit

class timerViewController: UIViewController {
    struct studyMins {
        static var mins = 0
    }
    
    @IBOutlet weak var helpButton: UIButton!

    @IBOutlet weak var wmTextField: UITextField!
    @IBOutlet weak var wsTextField: UITextField!
    @IBOutlet weak var bmTextField: UITextField!
    @IBOutlet weak var bsTextField: UITextField!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timerLabel2: UILabel!
    var timer = Timer()
    var mins = 0
    var secs = 0
    var count = 0
    var minsLabel = ""
    var secsLabel = ""
    var keepMins = 0
    var currMins = 0
    
    var timer2 = Timer()
    var mins2 = 0
    var secs2 = 0
    var count2 = 0
    var minsLabel2 = ""
    var secsLabel2 = ""
    var keepMins2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTimer(_ sender: Any) {
        timer.invalidate()
        timer2.invalidate()
        timerLabel2.isHidden = true
        timerLabel.isHidden = false
        mins = Int(wmTextField.text!) ?? 0
        secs = Int(wsTextField.text!) ?? 0
        keepMins = mins
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerViewController.setTimer), userInfo: nil, repeats: true)
        count = mins * 60 + secs
        wmTextField.text = ""
        wsTextField.text = ""
    }
    
    @objc func setTimer() {
        if count >= 0 {
            let minutes = String(count / 60)
            let seconds = String(count % 60)
            currMins = count / 60
            
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
        else {
            timer.invalidate()
            studyMins.mins += keepMins
        }
        print(studyMins.mins)
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        studyMins.mins += (keepMins - currMins)
        timer.invalidate()
        timerLabel.text = "00 : 00"
        print(studyMins.mins)
    }
    
    @IBAction func startTimer2(_ sender: Any) {
        timer.invalidate()
        timer2.invalidate()
        timerLabel2.isHidden = false
        timerLabel.isHidden = true
        mins2 = Int(bmTextField.text!) ?? 0
        secs2 = Int(bsTextField.text!) ?? 0
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerViewController.setTimer2), userInfo: nil, repeats: true)
        count2 = mins2 * 60 + secs2
        bmTextField.text = ""
        bsTextField.text = ""
    }
    
    @objc func setTimer2() {
        if count2 >= 0 {
            let minutes2 = String(count2 / 60)
            let seconds2 = String(count2 % 60)
            
            minsLabel2 = String(minutes2)
            secsLabel2 = String(seconds2)
            if String(minutes2).count == 1 {
                minsLabel2 = "0\(minutes2)"
            }
            if String(seconds2).count == 1 {
                secsLabel2 = "0\(seconds2)"
            }
            
            timerLabel2.text = minsLabel2 + " : " + secsLabel2
            count2 -= 1
        }
    }
    @IBAction func stopTimer2(_ sender: Any) {
        timer2.invalidate()
        timerLabel2.text = "00 : 00"
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
