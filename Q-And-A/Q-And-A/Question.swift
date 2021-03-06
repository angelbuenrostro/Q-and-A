//
//  Question.swift
//  Q-And-A
//
//  Created by Angel Buenrostro on 1/15/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation

struct Question {
    let question : String
    let asker : String
    var answer : String?
    var answerer : String?
    
    init(question: String, asker : String, answer : String? = nil, answerer : String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
    
}
extension Question : Equatable {
    static func == ( lq: Question, rq: Question) -> Bool {
        return
            lq.question == rq.question &&
            lq.asker    == rq.asker    &&
            lq.answer   == rq.answer   &&
            lq.answerer == rq.answerer
    }
}
