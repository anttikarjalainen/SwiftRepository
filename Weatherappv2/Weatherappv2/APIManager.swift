
import SwiftUI
import Combine

class APIManager: ObservableObject {
    var didChange = PassthroughSubject<Void,Never>()
    @Published var weathers = [Weather]() {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?appid=e72ca729af228beabd5d20e3b7749713&units=metric&q=Lappeenranta") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            let weather = try! JSONDecoder().decode([Weather].self, from: data)
            DispatchQueue.main.async {
                self.weathers = weather
            }
            print("API values fetched Successfully")
            }.resume()
    }
    
}
