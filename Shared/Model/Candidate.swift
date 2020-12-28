//
//  Candidate.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//itemName:妇科
var examName = "绩效考核"

struct Candidate: InitIdentifiable {
    init(_ itemName: String) {
        self.itemName = itemName
        考核 = Exam(examName)
    }
    var id = UUID()
    var itemName: String
    var 考核: Exam
}


extension Candidate {
    var 年度: Int {
        Calendar.current.component(.year, from: Date())
    }
    var yb1: Int {
        year(x: -1)
    }
    var yb2: Int {
        year(x: -2)
    }
    var yb3: Int {
        year(x: -3)
    }
    func year(x: Int) -> Int {
        年度 + x
    }    
}

