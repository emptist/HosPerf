//
//  swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI


class Archive<ItemType: InitIdentifiable>: ObservableObject, AddMoveDeletable {
    @Published var items: Array<ItemType>
    
    init(_ items: Array<ItemType> = []) {
        self.items = items
    }
}




var testArchive = Archive([
    Candidate("妇科"),
    Candidate("儿科")
])

