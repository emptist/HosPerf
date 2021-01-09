//
//  DetailView.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct DetailView: View {
    @Binding var candidate: Candidate
    @Binding var inputMode: Bool //= true
    
    var body: some View {
            
            if inputMode {
                InputView(candidate: $candidate)
            } else {
                ResultView(candidate: $candidate)
                
            }
        
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(candidate: Archive().arrayOfItems[0])
//    }
//}


