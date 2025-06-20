//
//  CategoryHome.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/20.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(\.modelData) var modelData
    
    var body: some View {
        NavigationSplitView {   // Menu bar(menu 列表顯示)
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
                .navigationTitle("Featured")
        } detail: {             // Detail view for each of the menu item(點擊 menu 列表項目後跳轉的詳細頁)
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
