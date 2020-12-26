//
//  Archive.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

class Archive: ObservableObject {
    @Published var candidates: [Candidate] //
    
    init(_ candidates: [Candidate] = []) {
        self.candidates = candidates
    }
}



var 指标集 = [
    Indicator(指标名称: "收支结余", rawDataB1:233, rawDataB2: 3335,rawDataB3: 3388, 权重: 0.3, 评分: 77),
    Indicator(指标名称: "医务人员满意度", rawDataB1:23, rawDataB2: 35,rawDataB3: 88, 权重: 0.4, 评分: 76),
    Indicator(指标名称: "门诊患者满意度", rawDataB1:63, rawDataB2: 55,rawDataB3: 38, 权重: 0.3, 评分: 79),
]
var exam = Exam(考核名称:"三级综合医院绩效考核", 指标集: 指标集, 年度: 2019)
var 中山一 = Candidate(单位名称: "中山一", 考核: exam)


var 指标集2 = [
    Indicator(指标名称: "收支结余", rawDataB1:233, rawDataB2: 3335,rawDataB3: 3388, 权重: 0.3, 评分: 78),
    Indicator(指标名称: "医务人员满意度", rawDataB1:65, rawDataB2: 95,rawDataB3: 88, 权重: 0.4, 评分: 37),
    Indicator(指标名称: "门诊患者满意度", rawDataB1:63, rawDataB2: 57,rawDataB3: 78, 权重: 0.3, 评分: 29),
]
var exam2 = Exam(考核名称:"三级中医医院绩效考核", 指标集: 指标集2, 年度: 2019)
var 广中医 = Candidate(单位名称: "广中医", 考核: exam2)

var testArchive = Archive([
    中山一,
    广中医
])
