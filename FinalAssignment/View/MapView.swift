//
//  MapView.swift
//  FinalAssignment
//
//  Created by Ari Supriatna on 17/05/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        Map {
            Marker("\(user.name) building", coordinate: .init(
                latitude: Double(user.address.geo.lat) ?? 0.0,
                longitude: Double(user.address.geo.lng) ?? 0.0)
            )
            .tint(.orange)
        }
        .mapStyle(.standard)
        .navigationTitle("\(user.name)'s Location")
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(edges: .bottom)
    }
}
