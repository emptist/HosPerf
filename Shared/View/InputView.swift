//
//  InputView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct InputView: View {
    
    var body: some View {
        let tableHeads = ["指标名称","17年","18年","19年","20年"]
        let columns: [GridItem] =
            Array(repeating: .init(.flexible()), count:tableHeads.count)
        VStack {
            LazyVGrid(columns: columns) {
                //let codepoint = $0 + 0x1f600
                //let codepointString = String(format: "%02X", codepoint)
                //Text("\(codepointString)")
                //let emoji = String(Character(UnicodeScalar(codepoint)!))
                //Text("\(emoji)")
                ForEach(tableHeads, id: \.self) { th in
                    Text(th)
                    
                }
//                Text("指标名称")
////                Text("指标性质")
//                Text("17年")
//                Text("18年")
//                Text("19年")
//
               
                
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
//                        Text("逐步提高")
                        // - TODO: input field
                        Text("25%")
                        Text("30%")
                        Text("40%")
                        Text("50%")
                        
                       
                    }
                }.font(.title)
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
