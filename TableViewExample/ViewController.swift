//
//  ViewController.swift
//  TableViewExample
//
//  Created by bling on 2016. 7. 11..
//  Copyright © 2016년 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var array = [Todo]()
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Tableview data source methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        let todo = array[indexPath.row]
        // Confiigure cell
        cell.textLabel?.text = todo.name
        
        
        return cell
    }
    
    //MARK: TableView Delegate Methods
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            array.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        array.append(Todo(name: "Eat Breakfast"))
        array.append(Todo(name: "Brush Teeth"))
        array.append(Todo(name: "Tie Shoes"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

