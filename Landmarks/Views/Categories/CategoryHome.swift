//
//  CategoryHome.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/20.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(\.modelData) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {   // Menu bar(menu 列表顯示)
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())    // 移除 list 的預設那邊距
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {             // Detail view for each of the menu item(點擊 menu 列表項目後跳轉的詳細頁)
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
