//
//  To-Do Table View Controller.swift
//  toDoListkwk2022
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class To_Do_Table_View_Controller: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }//END OF VIEW DID LOAD FUNCTION
    
    func createToDo() -> [ToDo]{
        let swift = ToDo()
        swift.name = "Show everyone we know Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk Sammy"
        dog.important = true
        
        return[swift, dog]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView : UITableView, numberOfRowsInSection: Int) -> Int {
        return toDos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCell(withIdentifier: "reuse Identifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important{
            cell.textLabel?.text = "DOG" + toDo.name
        }else{
            cell.textLabel?.text = toDo.name
        }
        return cell
    }}
