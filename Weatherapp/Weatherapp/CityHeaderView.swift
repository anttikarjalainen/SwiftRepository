struct CityHeaderView: View {
    
    @ObjectBinding var city: City
    
    var temperature: String {
        guard let temperature = city.weather?.current.temperature else {
            return "-ºC"
        }
        return temperature.formattedTemperature
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center, spacing: 16) {
                city.weather?.current.icon.image
                    .font(.largeTitle)
                Text(temperature)
                    .font(.largeTitle)
            }
            Spacer()
        }
            .frame(height: 110)
    }
    
}
