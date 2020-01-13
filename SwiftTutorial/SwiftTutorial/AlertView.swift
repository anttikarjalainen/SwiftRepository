//
//  AlertView.swift
//  SwiftTutorial
//
//  Created by Antti Karjalainen on 13/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import SwiftUI

struct AlertView: View {
@State private var showingAlert = false
var body: some View {
Button(action: {
self.showingAlert = true
}) {
Text("Show Alert")
.font(.title)
.foregroundColor(Color.white)
}
.alert(isPresented: $showingAlert) {
Alert(title: Text("Alert in SwiftUI"), message: Text("How was that"), primaryButton: .default(Text("Awesome")), secondaryButton: .destructive(Text("Cancel")))
    }
  }
}
struct AlertView_Previews: PreviewProvider {
static var previews: some View {
    AlertView()
  }
}
