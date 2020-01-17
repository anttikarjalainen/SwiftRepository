import SwiftUI

struct CityView : View {
    
    @ObjectBinding var city = City(name: "Chambéry")
    
    var body: some View {
        List {
            Section(header: Text("Now")) {
                CityHeaderView(city: city)
            }
            
            Section(header: Text("Hourly")) {
                CityHourlyView(city: city)
            }
            
            Section(header: Text("This week")) {
                ForEach(city.weather?.week.list ?? []) { day in
                    CityDailyView(day: day)
                }
            }
        }
            .navigationBarTitle(Text(city.name))
    }
    
}
