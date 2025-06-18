//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/18.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300) // 可以自定義view的frame
            
            CircleImage(image: landmark.image)
                .offset(y: -130)        // 往上偏移130
                .padding(.bottom, -130) // 與bottom的間隙減少130
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)             // 將modifier放在Stack上會適用於裡面的所有畫面
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
