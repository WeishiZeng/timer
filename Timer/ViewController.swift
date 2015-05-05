//
//  ViewController.swift
//  Timer
//
//  Created by Weishi Zeng on 4/24/15.
//  Copyright (c) 2015 Garlic & Onion. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var countDown: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var seconds: NSTimeInterval!
    var timer: NSTimer = NSTimer()
    var counter:Int = 0
    
    @IBAction func stopButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func start(sender: AnyObject) {
        
        datePicker.datePickerMode = UIDatePickerMode.CountDownTimer
        seconds = datePicker.countDownDuration
        counter = Int(seconds)
        label.text = seconds.description
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
        
    }
    
    func updateCounter() {
        
        countDown.text = String(counter--)
        label.text = __FUNCTION__
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
}

