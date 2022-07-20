//
//  ViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var tipsButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timerButton.layer.cornerRadius = 4
        musicButton.layer.cornerRadius = 4
        tipsButton.layer.cornerRadius = 4
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;
    }


}

