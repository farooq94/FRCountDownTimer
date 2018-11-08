//
//  FRTimerView.swift
//  CountDownTimerView
//
//  Created by Invision-MacBookPro-shayan on 17/07/2018.
//  Copyright © 2018 InvisionSolutions. All rights reserved.
//

import UIKit

@IBDesignable class FRTimerView: UIView {
    
    @IBInspectable var timerBackgroundColor: UIColor? = .purple{
        didSet{
            //set timer's bg color
        }
    }
    @IBInspectable var timerLabelTextColor: UIColor? = .white{
        didSet{
            //set timer's text color
        }
    }
    
    private var timerView:FRCountDownTimer!
    let nibName = "FRCountDownTimer"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    func start(withEndTime : Date){
        timerView.endTime = withEndTime
    }
    private func loadNib(){
        timerView = (Bundle.main.loadNibNamed(nibName, owner: self, options: nil)?.first as? FRCountDownTimer)
        timerView?.frame = self.bounds
        addSubview(timerView!)
        
    }
    
}
