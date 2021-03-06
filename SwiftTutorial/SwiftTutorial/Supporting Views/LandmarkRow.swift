//
//  LandmarkRow.swift
//  SwiftTutorial
//
//  Created by Antti Karjalainen on 13/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        
        HStack {
            
            
            landmark.image
            .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }

        
            }
        
        
            }
    
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        LandmarkRow(landmark: landmarkData[0])
            
        }
        
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
