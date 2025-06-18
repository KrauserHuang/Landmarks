//
//  MapView.swift
//  Landmarks
//
//  Created by IT-MAC-02 on 2025/6/17.
//

import MapKit
import SwiftUI

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {    // 以center為中心建立的範圍
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    var body: some View {
//        Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
