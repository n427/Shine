//
//  tipsViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-20.
//
import UIKit

class tipsViewController: UIViewController {
    
    @IBOutlet weak var helpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;
       
       
        // Do any additional setup after loading the view.
    }
}
