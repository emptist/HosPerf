//
//  AddMoveRemovable.swift
//  HosPerf
//
//  Created by jk on 2020/12/29.
//

import Foundation
//import SwiftUI


protocol InitIdentifiable: Identifiable {
    var itemName: String {get set}
    init(_ itemName: String)
}

protocol AddMoveDeletable {
    associatedtype ItemType: InitIdentifiable
    
    var items: Array<ItemType> {get set}
    func makeItem(_ itemName: String) -> Void
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void
    
    func deleteItem(offsets:IndexSet) -> Void
    
}

extension AddMoveDeletable {
    mutating func makeItem(_ itemName: String) -> Void {
        items.append(ItemType(itemName))
    }
    
    mutating func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        items.move(fromOffsets: oldIndex, toOffset: newIndex)
    }
    
    mutating func deleteItem(offsets:IndexSet) -> Void {
        items.remove(atOffsets: offsets)
    }
}
