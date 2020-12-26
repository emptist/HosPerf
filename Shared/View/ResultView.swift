//
//  ResultView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct ResultView: View {
    @Binding var candidate: Candidate
    
    var body: some View {
        let tableHeads = ["指标名称","指标导向","17年","18年","19年","权重","评分"]
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
                        Text("\(indicator.指标名称)")
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
        .navigationTitle(candidate.单位名称)
    }
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView(candidate:Archive().candidates[0])
//    }
//}


