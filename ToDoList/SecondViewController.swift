//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Tommie on 2/1/17.
//  Copyright © 2017 Watchanan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var newItemLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func AddNewItem(_ sender: Any) {
        var items = UserDefaults.standard.object(forKey: "itemArray") as! [String]
        items.append(newItemLabel.text!)
        UserDefaults.standard.set(items, forKey: "itemArray")
        newItemLabel.text = ""
        print(items)
    }
}

