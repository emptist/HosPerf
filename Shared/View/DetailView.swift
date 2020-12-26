//
//  DetailView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct DetailView: View {
    @Binding var candidate: Candidate
    @State var editMode = true
    
    var body: some View {
        VStack {
            withAnimation() {
                Toggle(isOn: $editMode) {
                    Text("editMode")
                }
            }
            
            if editMode {
                InputView(candidate: $candidate)
            } else {
                ResultView(candidate: $candidate)
                
            }
        }
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(candidate: Archive().candidates[0])
//    }
//}


