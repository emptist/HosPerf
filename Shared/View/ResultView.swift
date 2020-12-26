//
//  ResultView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        var columns: [GridItem] =
            Array(repeating: .init(.flexible()), count: 7)
        VStack {
            LazyVGrid(columns: columns) {
                //let codepoint = $0 + 0x1f600
                //let codepointString = String(format: "%02X", codepoint)
                //Text("\(codepointString)")
                //let emoji = String(Character(UnicodeScalar(codepoint)!))
                //Text("\(emoji)")
                Text("指标名称")
                Text("权重")
                Text("指标性质")
                Text("2017年")
                Text("2018年")
                Text("2019年")
                Text("评分")
        
                
            }.font(.largeTitle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach((0...39), id: \.self) { idx in
                        //let codepoint = $0 + 0x1f600
                        //let codepointString = String(format: "%02X", codepoint)
                        //Text("\(codepointString)")
                        //let emoji = String(Character(UnicodeScalar(codepoint)!))
                        //Text("\(emoji)")
                        Text("出院患者手术占比")
                        Text("0.3")
                        Text("逐步提高")
                        Text("25%")
                        Text("30%")
                        Text("40%")
                        Text("99分")
                    }
                }.font(.title)
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
