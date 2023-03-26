//
//  ItemsTableViewController.swift
//  LootLogger
//
//  Created by Bektur Mamytov on 27/3/23.
//

import UIKit

class ItemsTableViewController: UITableViewController {

    var itemStore: ItemStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text  = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }

}
