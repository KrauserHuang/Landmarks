//
//  LandmarkList.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

#Preview {
    LandmarkList()
}
