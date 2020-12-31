//
//  AddMoveRemovable.swift
//  HosPerf
//
//  Created by jk on 2020/12/29.
//

import Foundation


protocol InitIdentifiable: Identifiable {
    var itemName: String {get set}
    init(_ itemName: String)
}


// AnyObject represents all classes;
// when missing we need to add mutating in front of func definition in following extension
protocol AddMoveDeletable: AnyObject {
    associatedtype ItemType: InitIdentifiable
    
    var items: Array<ItemType> {get set}
    func makeItem(_ itemName: String) -> Void
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void
    
    func deleteItem(offsets:IndexSet) -> Void
    
    subscript(index: Int) -> ItemType { set get }
}

extension AddMoveDeletable {
    //mutating
    func makeItem(_ itemName: String) -> Void {
        items.append(ItemType(itemName))
    }
    
    //mutating
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        items.move(fromOffsets: oldIndex, toOffset: newIndex)
    }
    
    //mutating
    func deleteItem(offsets:IndexSet) -> Void {
        items.remove(atOffsets: offsets)
    }
    
    subscript(index: Int) -> ItemType {
        get {
            items[index]
        }
        set {
            items[index] = newValue
        }
    }
}
