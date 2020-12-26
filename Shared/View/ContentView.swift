//
//  ContentView.swift
//  Shared
//
//  Created by jk on 2020/12/26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var archive: Archive

    var body: some View {
        
        NavigationView {
            // A list of Students
            CandidateList(archive: archive)
            
            // this is for iPad and MacOS
            Text("Please Add Some Students")
                .font(.largeTitle)
        }

//        VStack {
//            Text("\(archive.candidates[0].单位名称)")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundColor(Color.orange)
//                .multilineTextAlignment(.center)
//                .shadow(radius: 10)
//            ResultView(archive: archive)
//        }
    }
}

struct CandidateList: View {
    @ObservedObject var archive: Archive
    
    var body: some View {
        List {
            ForEach(archive.candidates) { ca in
                NavigationLink(
                    destination: DetailView(candidate: ca),
                    label: {
                        Text("\(ca.单位名称)")
                    })
            
            }
        }
        .navigationTitle("考核对象")

    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(archive: Archive())
    }
}
