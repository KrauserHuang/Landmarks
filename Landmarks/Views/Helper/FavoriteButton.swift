//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/18.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)  // 只會顯示 icon，Label 的上字是給 accessibility VoiceOver 用的
                .foregroundStyle(isSet ? .yellow : .gray)
        }

    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
