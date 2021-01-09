//
//  Indicator.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation


//itemName:平均住院率
//近年值:历次年度历次指标的值

struct Indicator: IdInitiatable {
    init(_ itemName: String) {
        self.itemName = itemName
    }
    
    var id = UUID()
    var itemName: String
    var 指标导向: String = "逐步提高"
//    var 年度: Int
    //var 近年值: [Float]
    var rawDataB1: Float!
    var rawDataB2: Float!
    var rawDataB3: Float!
    var 权重: Float!
    var 评分: Float!
}
