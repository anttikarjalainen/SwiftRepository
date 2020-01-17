import SwiftUI
import Combine

class CityStore: BindableObject {
    
    let didChange = PassthroughSubject<CityStore, Never>()
    
    var cities: [City] = [City(name: "Chambery")] {
        didSet {
            didChange.send(self)
        }
    }
    
}
