//
//  LabeledTextField.swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//


import SwiftUI


struct VLabeledTextField: ViewModifier  {
    var label: String
    
    func body(content: Content) -> some View {
        VStack(alignment: .center) {
            Text(label)
            content
        }
    }
}


struct HLabeledTextField: ViewModifier {
    var label: String
    
    func body(content: Content) -> some View {
        HStack(alignment: .center) {
            Text(label)
            content
        }
    }
}

extension View {
    func vLabel(label: String) -> some View {
        self.modifier(VLabeledTextField(label:label))
    }
    
    func hLabel(label: String) -> some View {
        self.modifier(HLabeledTextField(label: label))
    }
}

//struct LabeledTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        LabeledTextField()
//    }
//}
