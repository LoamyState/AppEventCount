//
//  ViewController.swift
//  AppEventCount
//
//  Created by Jane Madsen on 3/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var didFinishLaunchingLabel: UILabel!
    @IBOutlet var configurationForConnectingLabel: UILabel!
    @IBOutlet var willConnectToLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    var willConnectToCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "App launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "Configuration connected \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "Will Connect To: \(willConnectToCount) time(s)"
        didBecomeActiveLabel.text = "Did Become Active: \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "Will Resign Active: \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "Will Enter Foreground: \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "Did Enter Background: \(didEnterBackgroundCount) time(s)"
    }

}

