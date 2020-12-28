//
//  swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI


class Archive<ItemType: Initiable>: ObservableObject, AddMoveDeletable {
    @Published var items: Array<ItemType>
    
    init(_ candidates: Array<ItemType> = []) {
        self.items = candidates
    }
    
    func makeItem(_ itemName: String) -> Void {
        withAnimation {
            items.append(ItemType(itemName))
        }
    }

    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        withAnimation {
            items.move(fromOffsets: oldIndex, toOffset: newIndex)
        }
    }
    
    func deleteItem(offsets:IndexSet) -> Void {
        withAnimation {
            items.remove(atOffsets: offsets)
        }
    }
}






var testArchive = Archive([
    Candidate("妇科"),
    Candidate("儿科")
])

