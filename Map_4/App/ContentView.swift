//
//  ContentView.swift
//  Map_4
//
//  Created by 韦亦航 on 2026/1/7.
//

import SwiftUI
import MapKit
import Combine

struct CampusMapView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Map(position: $cameraPosition) {
                    UserAnnotation()
                }
                .mapControls {
                    MapUserLocationButton()
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal, 10)
            }
    }
}

#Preview {
    CampusMapView()
}
