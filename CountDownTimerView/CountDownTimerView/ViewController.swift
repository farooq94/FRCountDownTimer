//
//  ViewController.swift
//  CountDownTimerView
//
//  Created by Farooq on 6/4/18.
//  Copyright © 2018 InvisionSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countDownView: FRTimerView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        countDownView.start(withEndTime: Date().addingTimeInterval(3000))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

