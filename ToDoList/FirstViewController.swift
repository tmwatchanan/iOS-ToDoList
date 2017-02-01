//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Tommie on 2/1/17.
//  Copyright © 2017 Watchanan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var itemsObject = UserDefaults.standard.object(forKey: "itemArray")
    
    @IBOutlet weak var itemTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        itemsObject = UserDefaults.standard.object(forKey: "itemArray")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        itemsObject = UserDefaults.standard.object(forKey: "itemArray")
        
        if let items = itemsObject as? NSArray {
            print(items)
        }
        itemTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let items = itemsObject as? NSArray {
            return items.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ToDoItemCell")
        if let items = itemsObject as? NSArray {
            cell.textLabel?.text = String(describing: items[indexPath.row])
        }
        return cell
    }}

