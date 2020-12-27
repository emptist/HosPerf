//
//  CandidatesView.swift
//  HosPerf
//
//  Created by jk on 2020/12/27.
//

import SwiftUI

struct CandidatesView: View {
    @ObservedObject var archive: Archive
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
    @ObservedObject var archive: Archive
    @Binding var inputMode: Bool //= true
    
    var body: some View {
        VStack {
            withAnimation() {
                Toggle(isOn: $inputMode) {
                    Text("editMode")
                }
            }
            
            List {
                ForEach(0..<archive.candidates.count, id:\.self) { idx in
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
                    Button("Add", action: makeItem)
                    //Spacer()
                }
            }

        }
    }
    
    func makeItem() -> Void {
        withAnimation {
            archive.candidates.append(Candidate(单位名称: "", 考核: Exam(考核名称: "", 指标集: [], 年度: 0)))
            //print(archive.students)
        }
    }
    
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        withAnimation {
            archive.candidates.move(fromOffsets: oldIndex, toOffset: newIndex)
        }
    }
    
    func deleteItem(offsets:IndexSet) -> Void {
        withAnimation {
            archive.candidates.remove(atOffsets: offsets)
        }
    }
}




struct ItemCellOnNaviBar: View {
    @ObservedObject var archive: Archive
    var idx: Int
    @Binding var imputMode: Bool //= true
    var body: some View {
        NavigationLink(
            destination: DetailView(candidate: $archive.candidates[idx], inputMode: $imputMode),
            label: {
                Text("\(archive.candidates[idx].单位名称)")
            })
    }
}




struct CandidatesView_Previews: PreviewProvider {
    static var previews: some View {
        CandidatesView(archive: Archive())
    
    }
}
