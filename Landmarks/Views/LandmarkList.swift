//
//  LandmarkList.swift
//  Landmarks
//
//  Created by PakWheels Test on 09/10/2023.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = true
    
    var filteredList: [Landmark]{
        modelData.landmarks.filter{landmark in
            (!showFavoritesOnly||landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredList){ landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    detail: {
        Text("Select a Landmark")
    }
    }
}


#Preview {
    LandmarkList()
        .environment(ModelData())
}

