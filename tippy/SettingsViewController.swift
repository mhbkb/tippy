//
//  SettingsViewController.swift
//  tippy
//
//  Created by maohao on 11/9/16.
//  Copyright © 2016年 maohao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipLabel: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let amountIndex = defaults.integerForKey("tip_amount_default_index")
                
        tipLabel.selectedSegmentIndex = amountIndex
    }
    

    @IBAction func onValueChange(sender: AnyObject) {
        let amountIndex = tipLabel.selectedSegmentIndex ?? 0
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(amountIndex, forKey: "tip_amount_default_index")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
