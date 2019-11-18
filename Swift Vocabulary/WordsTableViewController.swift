//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Gerardo Hernandez on 11/13/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

 
    
    var vocabWords: [VocabularyWord] = [constant, variable, function]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
            let wordDefinitionVC = segue.destination as? DefinitionViewController else { return }
            
            let wordCell = vocabWords[indexPath.row]
            
            wordDefinitionVC.vocabWord = wordCell
            
            
        }
    }

}

