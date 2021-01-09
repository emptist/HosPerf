//
//  swift
//  HosPerf
//
//  Created by jk on 2020/12/26.
//

import SwiftUI


class Archive<ItemType: IdInitiatable>: ObservableObject, AddMoveDeletable {
    @Published var arrayOfItems: Array<ItemType>
    
    init(_ items: Array<ItemType> = []) {
        self.arrayOfItems = items
    }
}




var testArchive = Archive([
    Candidate("妇科"),
    Candidate("儿科")
])

