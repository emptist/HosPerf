//
//  CandidatesView.swift
//  HosPerf
//
//  Created by jk on 2020/12/27.
//

import SwiftUI

struct CandidatesView: View {
    @ObservedObject var archive: Archive<Candidate>
    @State var inputMode = true
    
    var body: some View {
        NavigationView {
            // A list of Students
            CandidateList(archive: archive, inputMode: $inputMode)
            
            // this is for iPad and MacOS
            Text("Please Add Some Candidates")
                .font(.title)
        }
    }
}



struct CandidateList: View {
    @ObservedObject var archive: Archive<Candidate>
    @Binding var inputMode: Bool //= true
    @State var itemName: String = ""
    
    var body: some View {
        VStack {
//            withAnimation() {
//                Toggle(isOn: $inputMode) {
//                    Text("editMode")
//                }
//            }
            
            List {
                ForEach(0..<archive.items.count, id:\.self) { idx in
                    ItemCellOnNaviBar(archive: archive, idx: idx, imputMode: $inputMode)
                }
                .onMove(perform: moveItem)
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("考核对象")
            .toolbar {
                HStack {
                    #if os(iOS)
                    EditButton()
                    #endif
                    TextField("条目名称", text: $itemName)
                    Button("Add", action: makeItem)
                    //Spacer()
                }
            }

        }
    }
    
    func makeItem() -> Void {
        withAnimation {
            archive.makeItem(itemName)
        }
    }
    
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        withAnimation {
            archive.moveItem(from: oldIndex, to: newIndex)
        }
    }
    
    func deleteItem(offsets:IndexSet) -> Void {
        withAnimation {
            archive.deleteItem(offsets: offsets)
        }
    }
}




struct ItemCellOnNaviBar: View {
    @ObservedObject var archive: Archive<Candidate>
    var idx: Int
    @Binding var imputMode: Bool //= true
    var body: some View {
        NavigationLink(
            destination: DetailView(candidate: $archive.items[idx], inputMode: $imputMode),
            label: {
                Text("\(archive.items[idx].itemName)")
            })
    }
}




struct CandidatesView_Previews: PreviewProvider {
    static var previews: some View {
        CandidatesView(archive: Archive())
    
    }
}
