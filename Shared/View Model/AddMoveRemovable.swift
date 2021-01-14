//
//  AddMoveRemovable.swift
//  HosPerf
//
//  Created by jk on 2020/12/29.
//

import Foundation


protocol Initiatable {
    var itemName: String {get set}
    init(_ itemName: String)
}

protocol IdInitiatable: Initiatable, Identifiable {
    
}


// AnyObject represents all classes;
// when missing we need to add mutating in front of func definition in following extension
protocol AddMoveDeletable: AnyObject {
    associatedtype ItemType: IdInitiatable
    
    //var items: Set<ItemType> {get set}
    var arrayOfItems: Array<ItemType> {get set}
    func makeItem(_ itemName: String) -> Void
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void
    
    func deleteItem(offsets:IndexSet) -> Void
    
    subscript(index: Int) -> ItemType {set get}
}

extension AddMoveDeletable {
    //this won't work
    //typealias ItemType = InitIdentifiable
    
    //mutating
    func makeItem(_ itemName: String) -> Void {
        arrayOfItems.append(ItemType(itemName))
    }
    
    //mutating
    func moveItem(from oldIndex:IndexSet, to newIndex:Int) -> Void {
        arrayOfItems.move(fromOffsets: oldIndex, toOffset: newIndex)
    }
    
    //mutating
    func deleteItem(offsets:IndexSet) -> Void {
        arrayOfItems.remove(atOffsets: offsets)
    }
    
    subscript(index: Int) -> ItemType {
        get {
            arrayOfItems[index]
        }
        set {
            arrayOfItems[index] = newValue
        }
    }
}
