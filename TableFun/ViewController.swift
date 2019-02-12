//
//  ViewController.swift
//  TableFun
//
//  Created by Admin on 12/2/2562 BE.
//  Copyright © 2562 KMUTNB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "Cell"
    let items = ["Albert","Beryl","Charlie","Derak"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: IndexPath)
        cell.textLabel!.text = items[IndexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You Selected \(indexPath.row) (\(items[indexPath.row]))")
    }
}

