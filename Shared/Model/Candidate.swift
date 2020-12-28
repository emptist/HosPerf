//
//  Candidate.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//单位名称:妇科
var examName = "绩效考核"

struct Candidate: Identifiable, Initiable {
    init(_ itemName: String) {
        单位名称 = itemName
        考核 = Exam(examName)
    }
    
    var id = UUID()
    var 单位名称: String
    var 考核: Exam
    var 年度: Int {
        考核.年度
    }
}

