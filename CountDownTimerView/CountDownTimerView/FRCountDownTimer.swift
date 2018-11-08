//
//  FRCountDownTimer.swift
//  CountDownTimerView
//
//  Created by Farooq on 6/4/18.
//  Copyright © 2018 InvisionSolutions. All rights reserved.
//

import UIKit

@IBDesignable public class FRCountDownTimer: UIView {
    
    
    @IBOutlet private weak var daysView: TimeUnitView!
    @IBOutlet private weak var hoursView: TimeUnitView!
    @IBOutlet private weak var minutesView: TimeUnitView!
    @IBOutlet private weak var secondsView: TimeUnitView!
    
    private typealias TimeComponents = (days: Int,hours: Int,minutes: Int,seconds: Int)
    public var endTime : Date!{
        didSet{
            guard let _ = endTime else {return}
            startTimer()
        }
    }
  
    private func startTimer() {
     
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc private func updateTimer(){
        
        populateTimeLabels(timeDifference: calculateTimeDifference())
    }
    
    private func populateTimeLabels(timeDifference: TimeComponents) {
        daysView.setValue = "\(timeDifference.days)"
        hoursView.setValue = "\(timeDifference.hours)"
        minutesView.setValue = "\(timeDifference.minutes)"
        secondsView.setValue = "\(timeDifference.seconds)"
    }
    
    private func calculateTimeDifference()->TimeComponents{
        let currentTime = Date()
        let components = Calendar.current.dateComponents([.day,.hour,.minute,.second], from: currentTime, to: endTime)
        let days = components.day ?? 0
        let hour = components.hour ?? 0
        let minutes = components.minute ?? 0
        let seconds = components.second ?? 0
        return (days,hour,minutes,seconds)
    }

}

