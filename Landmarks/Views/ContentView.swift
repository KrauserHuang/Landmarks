//
//  ContentView.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
