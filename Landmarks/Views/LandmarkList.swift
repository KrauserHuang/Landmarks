//
//  LandmarkList.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/18.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {                                          // List是給靜態(static)資料
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in    // ForEach是給動態(dynamic)資料
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)  // improve filtering animation
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
