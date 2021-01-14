//
//  ResultView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//
// 显示小数位数方法:
// http://www.yzkhealth.com


import SwiftUI

struct ResultView: View {
    @Binding var candidate: Candidate
    
    var body: some View {
        let tableHeads = ["指标名称","指标导向","\(candidate.yb3)年","\(candidate.yb2)年","\(candidate.yb1)年","权重","评分"]
        let columns: [GridItem] =
            Array(repeating: .init(.flexible()), count:tableHeads.count)
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(tableHeads, id: \.self) { Text($0) }
            }
            .font(.title)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(candidate.考核.指标集) { indicator in
                        Text("\(indicator.itemName)")
                        Text("\(indicator.指标导向)")
                        Text("\(indicator.rawDataB1)")
                        Text("\(indicator.rawDataB2)")
                        Text("\(indicator.rawDataB3)")
                        Text("\(indicator.权重)")
                        Text("\(indicator.评分)")
                    }
                }.font(.body)
            }
        }
        .navigationTitle(candidate.itemName)
    }
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView(candidate:Archive().arrayOfItems[0])
//    }
//}


