//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/18.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(\.modelData) var modelData
    
    var landmark: Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    var body: some View {
        
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300) // 可以自定義view的frame
            
            CircleImage(image: landmark.image)
                .offset(y: -130)        // 往上偏移130
                .padding(.bottom, -130) // 與bottom的間隙減少130
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
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
    let modelData = ModelData()
    LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
