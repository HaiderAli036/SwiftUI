//
//  ContentView.swift
//  Landmarks
//
//  Created by PakWheels Test on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
