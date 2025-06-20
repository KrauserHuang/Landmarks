//
//  ContentView.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: LandmarkTab = .featured
    
    enum LandmarkTab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Tab("Featured", systemImage: "star", value: LandmarkTab.featured) {
                CategoryHome()
            }
            
            Tab("List", systemImage: "list.bullet", value: LandmarkTab.list) {
                LandmarkList()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
