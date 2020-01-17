//
//  Weather.swift
//  Weatherapp
//
//  Created by Antti Karjalainen on 17/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

struct Weather: Codable {
    
    var current: HourlyWeather
    var hours: Weather.List<HourlyWeather>
    var week: Weather.List<DailyWeather>
    
    enum CodingKeys: String, CodingKey {
        
        case current = "currently"
        case hours = "hourly"
        case week = "daily"
        
    }
    
}
