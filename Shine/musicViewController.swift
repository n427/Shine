//
//  musicViewController.swift
//  Shine
//
//  Created by Nicole Zhang on 2022-07-20.
//

import UIKit

class musicViewController: UIViewController {
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var minsText: UILabel!
    @IBOutlet weak var conan: UIButton!
    @IBOutlet weak var taylor: UIButton!
    @IBOutlet weak var frank: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var drake: UIButton!
    @IBOutlet weak var olivia: UIButton!
    @IBOutlet weak var conanLock: UILabel!
    @IBOutlet weak var taylorLock: UILabel!
    @IBOutlet weak var frankLock: UILabel!
    @IBOutlet weak var oneLock: UILabel!
    @IBOutlet weak var drakeLock: UILabel!
    @IBOutlet weak var oliviaLock: UILabel!
    
    var mins = timerViewController.studyMins.mins
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helpButton.clipsToBounds = true;
        helpButton.layer.cornerRadius = helpButton.layer.frame.size.width/2;
        minsText.text = "Total Minutes Studied: \(mins)"
        
        conanLock.isHidden = false
        conan.isEnabled = false
        taylorLock.isHidden = false
        taylor.isEnabled = false
        frankLock.isHidden = false
        frank.isEnabled = false
        oneLock.isHidden = false
        one.isEnabled = false
        drakeLock.isHidden = false
        drake.isEnabled = false
        oliviaLock.isHidden = false
        olivia.isEnabled = false
        
        if mins >= 5 {
            conanLock.isHidden = true
            conan.isEnabled = true
        }
        if mins >= 10 {
            taylorLock.isHidden = true
            taylor.isEnabled = true
        }
        if mins >= 15 {
            frankLock.isHidden = true
            frank.isEnabled = true
        }
        if mins >= 20 {
            oneLock.isHidden = true
            one.isEnabled = true
        }
        if mins >= 25 {
            drakeLock.isHidden = true
            drake.isEnabled = true
        }
        if mins >= 30 {
            oliviaLock.isHidden = true
            olivia.isEnabled = true
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func harryButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/5r36AJ6VOJtp00oxSkBZ5h?si=5bfead6b2ae84c8e")!)
    }
    @IBAction func jojiButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/track/6xGruZOHLs39ZbVccQTuPZ?si=21a6c55a9c3b48df")!)
    }
    @IBAction func conanButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/5hIOd0FvjlgG4uLjXHkFWI?si=71f3d3e27795479b")!)
    }
    @IBAction func taylorButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/1NAmidJlEaVgA3MpcPFYGq?si=4a581bcef3a24f65")!)
    }
    @IBAction func frankButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/3mH6qwIy9crq0I9YQbOuDf?si=fKaW20N0R_C-rpBm4I8gOg")!)
    }
    @IBAction func oneButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/2sWX3HYnZjPZ9MrH6MFsBt?si=kxK9-0qDTiW0h1AL7zGlEw")!)
    }
    @IBAction func drakeButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/3cf4iSSKd8ffTncbtKljXw?si=2d3542904ec74d9d")!)
    }
    @IBAction func oliviaButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://open.spotify.com/album/6s84u2TUpR3wdUv4NgKA2j?si=776e2ec56c464a7f")!)
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
