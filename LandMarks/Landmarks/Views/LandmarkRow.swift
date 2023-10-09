//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by PakWheels Test on 09/10/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            else{
                Image(systemName: "star").foregroundColor(.yellow)
            }
            
        }
    }
}


#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
    }
}
