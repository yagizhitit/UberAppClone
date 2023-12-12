//
//  UberAppCloneApp.swift
//  UberAppClone
//
//  Created by Yağız Hitit on 6.12.2023.
//

import SwiftUI

@main
struct UberAppCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
