//
//  AddTodoViewController.swift
//  TableViewExample
//
//  Created by bling on 2016. 7. 11..
//  Copyright © 2016년 test. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController {
    @IBAction func doneButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
