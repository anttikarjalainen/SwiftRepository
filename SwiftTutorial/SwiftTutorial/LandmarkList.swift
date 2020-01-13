//
//  LandmarkList.swift
//  SwiftTutorial
//
//  Created by Antti Karjalainen on 13/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import SwiftUI



struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
    
           
            
    List(landmarkData )
                            {
                                landmark in
        
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
        
        LandmarkRow(landmark: landmark)
            }
    
    }
            
        .navigationBarTitle(Text("Landmarks"))
        .navigationBarItems(trailing: EditButton())            
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .previewDisplayName(deviceName)
        }
    }
}
