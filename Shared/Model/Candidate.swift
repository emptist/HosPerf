//
//  Candidate.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//单位名称:中山一

struct Candidate: Identifiable {
    var id = UUID()
    var 单位名称: String
    var 历次考核: [Exam]
//    var 年度: Int
//    var 权重: Float
//    var 评分: Float
    
}

