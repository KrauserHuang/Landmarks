//
//  ProfileHost.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/20.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
}
