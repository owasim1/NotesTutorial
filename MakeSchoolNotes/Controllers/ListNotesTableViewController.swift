//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    var notes = [Note]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell
        let row = indexPath.row
        let note = notes[row]
        cell.noteTitleLabel.text = "note's title"
        cell.noteModificationTimeLabel.text = note.modificationTime.convertToString()
            
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let identifier = segue.identifier{
            if identifier == "displayNote"{
                print("Table view cell tapped")
        }
            else if identifier == "addNote"{
                print("+ button tapped")
        }
    }
  }
    
    @IBAction func unwindToListNotesViewController(_ segue: UIStoryboardSegue){
        
    }
    
}

