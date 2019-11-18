//
//  VocabularyWord.swift
//  Swift Vocabulary
//
//  Created by Gerardo Hernandez on 11/13/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import UIKit

struct VocabularyWord {
    let word: String
    let definition: String

    
    init(word: String, definition: String) {
        self.word = word
        self.definition = definition
    }
    
}


let function = VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")



let constant = VocabularyWord(word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal. There are enumeration constants as well.")

let variable = VocabularyWord(word: "Varible", definition: "A name value used to store information. Variables can be changed after being created.")


//let swiftDefinitions: [VocabularyWord] = [variable, constant, function]
