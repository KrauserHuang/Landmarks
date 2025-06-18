//
//  Extensions.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/18.
//

import Foundation
import SwiftUICore

private struct ModelDataKey: EnvironmentKey {
    static let defaultValue = ModelData()
}

extension EnvironmentValues {
    var modelData: ModelData {
        get { self[ModelDataKey.self] }
        set { self[ModelDataKey.self] = newValue }
    }
}
