//
//  LandmarkList.swift
//  SwiftTutorial
//
//  Created by Antti Karjalainen on 13/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import SwiftUI



struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks){ landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .onMove(perform: move)
                .onDelete(perform: delete)
                
            }
            .navigationBarTitle(Text("Landmarks"))
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        userData.landmarks.move(fromOffsets: source, toOffset: destination)
        
        
    }
    
    func delete(at offsets: IndexSet) {
        
        userData.landmarks.remove(atOffsets: offsets)
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
            .environmentObject(UserData())
        }
    }
}
