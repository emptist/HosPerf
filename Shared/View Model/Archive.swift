//
//  swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI


class Archive<ItemType: InitIdentifiable>: ObservableObject, AddMoveDeletable {
    @Published var items: Array<ItemType>
    
    init(_ candidates: Array<ItemType> = []) {
        self.items = candidates
    }
}




var testArchive = Archive([
    Candidate("妇科"),
    Candidate("儿科")
])

