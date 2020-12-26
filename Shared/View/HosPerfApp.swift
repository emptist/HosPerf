//
//  HosPerfApp.swift
//  Shared
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

@main
struct HosPerfApp: App {
    @StateObject var archive: Archive = testArchive
    
    var body: some Scene {
        WindowGroup {
            //ContentView() //(archive: archive)
            CandidatesView(archive: archive)
        }
    }
}

var numberFormatter: NumberFormatter {
    let f = NumberFormatter()
    f.numberStyle = .decimal
    return f
}
