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
