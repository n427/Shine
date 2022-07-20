//
//  timerViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-20.
//

import UIKit

class timerViewController: UIViewController {
    @IBOutlet weak var helpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;

        // Do any additional setup after loading the view.
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
