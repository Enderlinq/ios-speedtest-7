//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var DoneBtn: UIButton!
    
    var NameText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func DoneBtn(_ sender: UIButton) {
            self.NameText = NameField.text!
            self.performSegue(withIdentifier: "Greeting", sender: self)
    }
    
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "Greeting" {
                let vc = segue.destination as! NameVC
                vc.finalName = self.NameText
            }
        }
        

    }
    
