//
//  ViewController.swift
//  Turker_Notebook
//
//  Created by Gülşah Alan on 25.08.2021.
//

import UIKit
import CoreData

class NoteBookViewController: UITableViewController {
    
    var itemArray = [NoteModel]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadItem()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeadlineForNotes", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row].item
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textfield = UITextField()
        
        let alert = UIAlertController.init(title: "Add Headline For Your Notes", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item ", style: .default) { action in
            
            let newItem = NoteModel(context: self.context)
            
            newItem.item = textfield.text ?? ""
            
            
            self.itemArray.append(newItem)
            
            self.saveItem()
        }
        
        
        
        alert.addTextField { alertTextField in
            
            alertTextField.placeholder = "Create new headline"
            textfield = alertTextField
        }
    
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func saveItem() {
       
        do {
        try context.save()
        } catch {
            print("Error saving context \(error)")
        }
        
        tableView.reloadData()
    }
    
    func loadItem() {
        
        let request: NSFetchRequest<NoteModel> = NoteModel.fetchRequest()
        do {
            itemArray = try context.fetch(request)
        } catch {
            print("Error loading item \(error)")
        }
        
        tableView.reloadData()
    }
    
}

