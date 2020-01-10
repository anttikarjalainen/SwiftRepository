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
        
        VStack(alignment: .leading) {
            
            Text("Terve Antti!")
            .font(.title)
            .foregroundColor(.green)
            
            HStack {
                Text("Joshuan parkki")
                    .font(.subheadline)
                
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
            CircleImage()
            
        }
    .padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

