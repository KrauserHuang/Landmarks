//
//  ModelData.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import Foundation

// SwiftUI updates a view only when an observable property changes and the view’s body reads the property directly.
// 被Observable macro的型別，可被SwiftUI觀察，該實體物件有任何變動都會讓view可以更新
@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    /*
     用來將 array 按照特定條件分組
     $0 代表每個 Landmark 物件，raw 代表取得其 enum 原始值
     landmarks = [
        Landmark(name: "Turtle Rock", category: .rivers),
        Landmark(name: "Silver Salmon Creek", category: .lakes),
        Landmark(name: "Chilkoot Trail", category: .mountains),
        Landmark(name: "St. Mary Lake", category: .lakes)
     ]
     ----------------------------------------------------
     categories = [
        "Lakes": ["Silver Salmon Creek", "St. Mary Lake"],
        "Mountains": ["Chilkoot Trail"],
        "Rivers": ["Turtle Rock"]
     ]
     */
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
