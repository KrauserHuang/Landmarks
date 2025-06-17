//
//  CircleImage.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image(.turtlerock)
            .clipShape(Circle())    // Circle()在這裡當做一個遮罩(mask)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)    // overlay一個Circle()並且是以stroke形式
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
