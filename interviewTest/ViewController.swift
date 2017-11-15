//
//  ViewController.swift
//  interviewTest
//
//  Created by Colin Walsh on 11/10/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit
import Foundation
import SwiftyJSON

struct MenuListItem {
    let title: String
    let view: String
    let url: String
}

var MenuListItems: [MenuListItem]  = []
var currentIndex = 0


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationItem.title = "Menu"
        
        print(MockAPI.sharedInstance.data)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  MockAPI.sharedInstance.dataCount
       
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuTableViewCell
        
        var title = ""
        var view = ""
        var url = ""
        
        if let titleOp = (MockAPI.sharedInstance.data[indexPath.row]as!NSDictionary)["title"] {
            title = titleOp as! String
        }
        if let viewOp = (MockAPI.sharedInstance.data[indexPath.row]as!NSDictionary)["view"] {
            view = viewOp as! String
        }
        if view == "www" {
            if let urlOp = (MockAPI.sharedInstance.data[indexPath.row]as!NSDictionary)["url"] {
                url = urlOp as! String
            }
        }
        
        let item = MenuListItem(title: title, view: view, url: url)
        MenuListItems.append(item)
        
        cell.setUpCell(item: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentIndex = indexPath.row
        
        if MenuListItems[currentIndex].view == "www" {
            performSegue(withIdentifier: "toWeb", sender: self)
        } else {
            performSegue(withIdentifier: "toDetail", sender: self)
        }
    }

}

