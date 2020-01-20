import Foundation

struct Weather: Codable, Identifiable {
    
//    let id, dt, cod, timezone: Int
  let name, base: String
//    let coord: coord
//    let weather:
    
    let main: Main
}

struct Main: Codable {
    let temp: String
}
