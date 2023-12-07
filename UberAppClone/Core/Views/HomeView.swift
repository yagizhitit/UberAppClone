//
//  HomeView.swift
//  UberAppClone
//
//  Created by Yağız Hitit on 6.12.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
