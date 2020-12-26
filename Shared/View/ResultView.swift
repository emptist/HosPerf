//
//  ResultView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var archive: Archive
    var complete = true
    var body: some View {
        let tableHeads = ["指标名称","指标性质","17年","18年","19年","权重","评分"]
        let columns: [GridItem] =
            Array(repeating: .init(.flexible()), count:tableHeads.count)
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(tableHeads, id: \.self) { //th in
                    Text($0)//(th)
                }
            }.font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            ScrollView {
                LazyVGrid(columns: columns) {
                    //ForEach((0...39), id: \.self) { idx in
                    ForEach(archive.candidates[0].历次考核[0].指标集) { indicator in
                        Text("\(indicator.指标名称)")
                        Text("\(indicator.指标导向)")
                        Text("\(indicator.近年值[0])")
                        Text("\(indicator.近年值[1])")
                        Text("\(indicator.近年值[2])")
                        
                        
                        if complete {
                            Text("0.3")
                        } else {
                            Text("")
                        }
                        if complete {
                            Text("99分")
                        } else {
                            Text("")
                        }
                    }
                }.font(.title)
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(archive:Archive())
    }
}

