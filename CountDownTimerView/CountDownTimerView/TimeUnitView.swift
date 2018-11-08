//
//  TimeUnitView.swift
//  CountDownTimerView
//
//  Created by Farooq on 6/4/18.
//  Copyright © 2018 InvisionSolutions. All rights reserved.
//

import UIKit

class TimeUnitView: UIView {
    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var unitLabel: UILabel!
    var setValue:String?{
        didSet{
            valueLabel.text = setValue ?? ""
        }
    }
    var unit:String?{
        didSet{
            unitLabel.text = unit ?? ""
        }
    }
    override func draw(_ rect: CGRect) {
    self.layer.cornerRadius = self.frame.height/2
    }
    
}
