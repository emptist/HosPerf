//
//  Exam.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//考核名称:三级综合医院绩效考核
//指标集:55个考核指标的集合

struct Exam: Identifiable {
    var id = UUID()
    var 考核名称: String
    var 指标集:[Indicator]
    var 年度: Int
    
    var 评分: Float {
        var result: Float = 0
        for each in 指标集 {
            result += each.评分
        }
        return result
    }
    
}

