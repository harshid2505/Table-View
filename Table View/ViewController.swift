//
//  ViewController.swift
//  Table View
//
//  Created by HARSHID PATEL on 07/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var a = [["Wi-Fi","Mobile network","Blutooth","Connection & sharing"],["Personalizations","Home screen & Lock screen","Display & brightness","Sound & vibration","Notifications & status bar"]]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return a.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = a[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return a[section].count
    }
     
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Section 1"
        }
        else if section == 1{
            return "Section 2"
        }
        return ""
    }

}

