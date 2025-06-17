//
//  ContentView.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300) // 可以自定義view的frame
            
            CircleImage()
                .offset(y: -130)        // 往上偏移130
                .padding(.bottom, -130) // 與bottom的間隙減少130
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)             // 將modifier放在Stack上會適用於裡面的所有畫面
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
