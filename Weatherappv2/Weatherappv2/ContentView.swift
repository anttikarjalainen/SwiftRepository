import SwiftUI
import Combine

struct ContentView : View {
    @ObservedObject var apiManager: APIManager
    var body: some View {
        NavigationView {
            List {
                ForEach(apiManager.weathers) { weather in
                    UserRow(weather:Weather)
                }
            }.navigationBarTitle(Text("User Information"))
        }
    }
}
