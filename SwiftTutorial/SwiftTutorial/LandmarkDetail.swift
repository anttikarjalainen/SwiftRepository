/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI


struct LandmarkDetail: View {
    @State private var showingAlert = false

    var landmark: Landmark
    
    
    

    var body: some View {
        VStack {

            
            
            
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
    
            
            Button(action: {
               
                       self.showingAlert = true
                       
                       
                   })
                   {
                   Text("Lisää")
                   Image(systemName: "plus")
                   } .padding(.top, 50)
                   
                   .alert(isPresented: $showingAlert) {
                   Alert(title: Text("Haluatko varmasti lisätä uuden?"), message: Text("Landmarkin lisäys"), primaryButton: .default(Text("Lisää")), secondaryButton: .destructive(Text("Peru")))
                       }
            
            
            Button(action: {
            
                    self.showingAlert = true
                    
                    
                })
                {
                Text("Poista")
                Image(systemName: "trash")
                } .padding(.top, 50)
                
                .alert(isPresented: $showingAlert) {
                Alert(title: Text("Haluatko varmasti poistaa?"), message: Text("Landmarkin poisto"), primaryButton: .default(Text("Poista")), secondaryButton: .destructive(Text("Peru")))
                    }
        
                
            

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                    
                    
                    
                    
                    
                    
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
    
    
    
    
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
