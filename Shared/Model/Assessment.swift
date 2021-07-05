//
//  Assessment.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//itemName:三级综合医院绩效考核
//IndicatorsGroup:56个考核指标的集合

struct Assessment: IdInitiatable {
    init(_ itemName: String) {
        self.itemName = itemName
        
    }
    
    var id = UUID()
    var itemName: String
    var IndicatorsGroup:[HMAIndicator] = ExampleIndicatorGroup

    var 评分: Float {
        var result: Float = 0
        for each in IndicatorsGroup {
            result += each.评分
        }
        return result
    }
    
}

var ExampleIndicatorGroup = [
    HMAIndicator("收支结余"),
    HMAIndicator("医务人员满意度"),
    HMAIndicator("门诊患者满意度"),
]

