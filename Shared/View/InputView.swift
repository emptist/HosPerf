//
//  InputView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct InputView: View {
    //@Binding
    var candidate: Candidate
    var complete = true
    var body: some View {
        let tableHeads = ["指标名称","17年","18年","19年"]
        let columns: [GridItem] =
            Array(repeating: .init(.flexible()), count:tableHeads.count)
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(tableHeads, id: \.self) { Text($0) }
            }
            .font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(candidate.考核.指标集) { indicator in
                        Text("\(indicator.指标名称)")
                        Text("\(indicator.rawDataB1)")
                        Text("\(indicator.rawDataB2)")
                        Text("\(indicator.rawDataB3)")
                        //TextField("17年", text: $indicator.近年值[0])
                        
                    }
                }.font(.title)
            }
        }
        .navigationTitle(candidate.单位名称)
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(candidate:Archive().candidates[0])
    }
}
