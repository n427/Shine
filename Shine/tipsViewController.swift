//
//  tipsViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-20.
//

import UIKit

class tipsViewController: UIViewController {
    @IBOutlet weak var fadeInOutLabel: UILabel!
    @IBOutlet weak var helpButton: UIButton!
    
    override func viewDidLoad() {
        self.fadeInOutLabel.alpha = 0.0
        super.viewDidLoad()
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;

        // Do any additional setup after loading the view.
    }
    
    @IBAction func fadeInOutClicked(_ sender: Any) {
           UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseIn, animations: {
               self.fadeInOutLabel.alpha = 1.0
           }, completion: nil)
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
