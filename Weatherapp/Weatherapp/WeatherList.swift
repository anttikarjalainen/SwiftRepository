//
//  WeatherList.swift
//  Weatherapp
//
//  Created by Antti Karjalainen on 17/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

extension Weather {
    
    struct List<T: Codable & Identifiable>: Codable {
        
        var list: [T]
        
        enum CodingKeys: String, CodingKey {
            
            case list = "data"
            
        }
        
    }
    
}
