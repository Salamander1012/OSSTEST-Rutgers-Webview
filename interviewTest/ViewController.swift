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
        parseData()
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  MenuListItems.count
       
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuTableViewCell
        
        cell.setUpCell(item: MenuListItems[indexPath.row])
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

//API Call and parsing data
extension ViewController {
    
    func parseData() {
        let data = MockAPI.sharedInstance.data as! [NSDictionary]
        for menuItem in data {
            var title = ""
            var view = ""
            var url = ""
            
            if let titleOp = menuItem.value(forKey: "title") {
                title = titleOp as! String
            }
            if let viewOp = menuItem.value(forKey: "view") {
                view = viewOp as! String
            }
            if view == "www" {
                if let urlOp = menuItem.value(forKey: "url") {
                    url = urlOp as! String
                }
            }
            let item = MenuListItem(title: title, view: view, url: url)
            MenuListItems.append(item)
            print(menuItem.value(forKey: "title"))
        }
        self.tableView.reloadData()
    }
}

