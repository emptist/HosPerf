//
//  Exam.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//itemName:三级综合医院绩效考核
//指标集:55个考核指标的集合

struct Exam: InitIdentifiable {
    init(_ itemName: String) {
        self.itemName = itemName
        
    }
    
    var id = UUID()
    var itemName: String
    var 指标集:[Indicator] = 各项指标

    var 评分: Float {
        var result: Float = 0
        for each in 指标集 {
            result += each.评分
        }
        return result
    }
    
}

var 各项指标 = [
    Indicator("收支结余"),
    Indicator("医务人员满意度"),
    Indicator("门诊患者满意度"),
]

