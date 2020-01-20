import SwiftUI

struct UserRow: View {
    let user: User
    let weather: Weather
    var body: some View {
        return NavigationLink(destination: UserDetail(user: user)) {
            VStack(alignment: .center) {
                ImageViewContainer(imageURL: user.imageURL)
                Text(weather.name).font(.system(size: 23))
                    .bold()
                Text(weather.main.temp).font(.system(size: 23))
               
            }
        }
    }
}
