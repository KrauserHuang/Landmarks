//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()  // initialize a model object
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
