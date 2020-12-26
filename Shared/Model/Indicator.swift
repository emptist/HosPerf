//
//  Indicator.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import Foundation

//let tableHeads = ["指标名称","指标性质","17年","18年","19年","权重","评分"]

//指标名称:平均住院率
//近年值:历次年度历次指标的值

struct Indicator: Identifiable {
    var id = UUID()
    var 指标名称: String
    var 指标导向: String = "逐步提高"
//    var 年度: Int
    var 近年值: [Float]
    var 权重: Float
    var 评分: Float
    
    
}
