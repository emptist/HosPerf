//
//  HMAIndicator.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation


//itemName:平均住院率
//近年值:历次年度历次指标的值

struct HMAIndicator: IdInitiatable {
    init(_ itemName: String) {
        self.itemName = itemName
    }
    
    var id = UUID()
    var itemName: String
    var 指标导向: String = "逐步提高"
//    var 年度: Int
    //var 近年值: [Float]
    var rawDataB1: Float! = 20
    var rawDataB2: Float! = 20
    var rawDataB3: Float! = 20
    var 权重: Float! = 0.5
    var 评分: Float! = 0
}
