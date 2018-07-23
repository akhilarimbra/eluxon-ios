//
//  ViewController.swift
//  Eluxon
//
//  Created by Akhil Raj Arimbra on 7/22/18.
//  Copyright © 2018 Akhil Raj Arimbra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func toggleButtonWasPressed(_ sender: Any) {
        if switchStatus == .on {
            view.backgroundColor = UIColor.black
            toggleButton.setImage(UIImage(named: "onBtn"), for: .normal)
            onOffLabel.textColor = UIColor.white
            onOffLabel.text = "🌚 OFF 🌚"
        } else {
            view.backgroundColor = UIColor.white
            toggleButton.setImage(UIImage(named: "offBtn"), for: .normal)
            onOffLabel.textColor = UIColor.black
            onOffLabel.text = "🌞 ON 🌞"
        }
        switchStatus.toggle()
    }
}

