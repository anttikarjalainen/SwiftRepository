//
//  ContentView.swift
//  SwiftTutorial
//
//  Created by Antti Karjalainen on 10/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        MapView()
            .edgesIgnoringSafeArea(.top)
            .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
        VStack(alignment: .leading) {
            
            Text("Denssiparkki")
            .font(.title)
            .foregroundColor(.green)
            
            HStack {
                Text("kansallispuisto")
                    .font(.subheadline)
                
                Spacer()
                Text("Sammonlahti")
                    .font(.subheadline)
            }
                        
        }
    .padding()
            
            Spacer()
    
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

