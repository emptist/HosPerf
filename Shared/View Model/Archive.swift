//
//  Archive.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

class Archive: ObservableObject {
    @Published var candidates: [Candidate] = [
        中山一,
    ]
}

var anArchive = Archive()

var 指标集2020 = [
    Indicator(指标名称: "收支结余", 近年值:[33533,433533,3783533], 权重: 0.3, 评分: 87),
    Indicator(指标名称: "医务人员满意度", 近年值:[90,50,20], 权重: 0.4, 评分: 66),
    Indicator(指标名称: "门诊患者满意度", 近年值:[6,8,7], 权重: 0.3, 评分: 59),
]

var 指标集2019 = [
    Indicator(指标名称: "收支结余", 近年值:[33533,433533,3783533], 权重: 0.3, 评分: 77),
    Indicator(指标名称: "医务人员满意度", 近年值:[1,11,91], 权重: 0.4, 评分: 76),
    Indicator(指标名称: "门诊患者满意度", 近年值:[4,44,74], 权重: 0.3, 评分: 79),
]

var exam2019 = Exam(考核名称:"三级综合医院绩效考核", 指标集: 指标集2019, 年度: 2019)
var exam2020 = Exam(考核名称:"三级综合医院绩效考核", 指标集: 指标集2020, 年度: 2020)
var exams = [exam2019, exam2020]

var 中山一 = Candidate(单位名称: "中山一", 历次考核:exams)

