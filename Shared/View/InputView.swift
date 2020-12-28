//
//  InputView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct InputView: View {
    @Binding var candidate: Candidate
    //var complete: Bool = true
    var body: some View {
        let tableHeads = ["指标名称","\(candidate.yb3)年","\(candidate.yb2)年","\(candidate.yb1)年"]
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
                    ForEach(0..<candidate.考核.指标集.count, id:\.self) { idx in
                        Text("\(candidate.考核.指标集[idx].itemName)")
                        TextField(candidate.考核.指标集[idx].itemName, value: $candidate.考核.指标集[idx].rawDataB1, formatter: numberFormatter)
                        TextField(candidate.考核.指标集[idx].itemName, value: $candidate.考核.指标集[idx].rawDataB2, formatter: numberFormatter)
                        TextField(candidate.考核.指标集[idx].itemName, value: $candidate.考核.指标集[idx].rawDataB3, formatter: numberFormatter)
                        
                    }
                }.font(.body)
            }
        }
        .navigationTitle(candidate.itemName)
    }
}

//struct InputView_Previews: PreviewProvider {
//    static var previews: some View {
//        InputView(candidate:Archive().items[0])
//    }
//}
