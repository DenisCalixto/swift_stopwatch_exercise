//
//  ViewController.swift
//  Stopwatch
//
//  Created by Denis Calixto on 9/23/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stopwatchLabel: UILabel!
    
    let stopwatch = Stopwatch()
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func updateTimeLabel() {
        //print("Updating")
        if stopwatch.getIsRunning {
            stopwatchLabel.text = stopwatch.elapsedTimeAsString
        }
    }
    
    //MARK: - Actions

    @IBAction func resetButton(_ sender: UIButton) {
        print("Reseting Stopwatch")
        stopwatch.reset()
        timer.invalidate()
        stopwatchLabel.text = "00:00.0"
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        print("Starting Stopwatch")
        stopwatch.start()
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                 target: self,
                                 selector: #selector(updateTimeLabel),
                                 userInfo: nil,
                                 repeats: true)
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print("Stopping Stopwatch")
        stopwatch.stop()
        timer.invalidate()
    }
    
}
