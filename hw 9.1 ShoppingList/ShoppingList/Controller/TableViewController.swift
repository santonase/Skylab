//
//  TableViewController.swift
//  ShoppingList
//
//  Created by Sviatoslav Binovskyi on 29.12.2022.
//

import UIKit

class TableViewController: UITableViewController {
        
    @IBAction func editAction(_ sender: Any) {
        tableView.setEditing(!tableView.isEditing, animated: true)
    }
    
    
    
    @IBAction func pushAddAction(_ sender: Any) {
        
        let alertController = UIAlertController(title: "New item", message: nil, preferredStyle: .alert)
        
        alertController.addTextField()
        
        let alertActionCancele = UIAlertAction(title: "Cancele", style: .destructive) { (alert) in
        }
        
        let alertActionAdd = UIAlertAction(title: "Add", style: .default) { (alert) in
            let newItem = alertController.textFields?[0].text
            addItem(nameItem: newItem ?? "Error")
            self.tableView.reloadData()
        }
        
        alertController.addAction(alertActionCancele)
        alertController.addAction(alertActionAdd)
        present(alertController, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let currentItem = shoppingItems[indexPath.row]
        cell.textLabel?.text = currentItem["Name"] as? String
        
        if (currentItem["isCompleted"] as? Bool) == true {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            removeItem(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if changeState(at: indexPath.row) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
    }
    

   
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        moveItem(fromIndex: fromIndexPath.row, toIndex: to.row)
        tableView.reloadData()
    }
 

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
