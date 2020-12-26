//
//  Archive.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

class Archive: ObservableObject {
    @Published var candidates: [Candidate] = [
        中山一,广中医
    ]
}

var anArchive = Archive()

var 指标集 = [
    Indicator(指标名称: "收支结余", 近年值:[33533,433533,3783533], 权重: 0.3, 评分: 77),
    Indicator(指标名称: "医务人员满意度", 近年值:[1,11,91], 权重: 0.4, 评分: 76),
    Indicator(指标名称: "门诊患者满意度", 近年值:[4,44,74], 权重: 0.3, 评分: 79),
]
var exam = Exam(考核名称:"三级综合医院绩效考核", 指标集: 指标集, 年度: 2019)
var 中山一 = Candidate(单位名称: "中山一", 考核: exam)


var 指标集2 = [
    Indicator(指标名称: "收支结余", 近年值:[111111,222222,33333], 权重: 0.3, 评分: 78),
    Indicator(指标名称: "医务人员满意度", 近年值:[2,22,92], 权重: 0.4, 评分: 97),
    Indicator(指标名称: "门诊患者满意度", 近年值:[7,77,87], 权重: 0.3, 评分: 89),
]
var exam2 = Exam(考核名称:"三级中医医院绩效考核", 指标集: 指标集2, 年度: 2019)
var 广中医 = Candidate(单位名称: "广中医", 考核: exam2)

