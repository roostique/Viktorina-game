//
//  Question.swift
//  Yay or Nay
//
//  Created by Rustem Supayev on 18/10/2019.
//  Copyright © 2019 Zeebagzo Lab. All rights reserved.
//

import Foundation

class Question {
    
    let answer : Bool
    let questionText : String
    let answerDescription : String
    
    init(text : String, correctAnswer : Bool, description : String) {
        questionText = text
        answer = correctAnswer
        answerDescription = description
        
    }
    
}

