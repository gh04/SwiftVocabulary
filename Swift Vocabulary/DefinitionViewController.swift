//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gerardo Hernandez on 11/13/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
   
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()

     updateViews()
    }
        
        func updateViews() {
            if let vocabWord = vocabWord {
            title = vocabWord.word
            WordCell.text = vocabWord.word
            SwiftDefinitions.text = vocabWord.definition
            
            
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


