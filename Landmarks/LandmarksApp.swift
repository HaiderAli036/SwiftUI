//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by PakWheels Test on 09/10/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
