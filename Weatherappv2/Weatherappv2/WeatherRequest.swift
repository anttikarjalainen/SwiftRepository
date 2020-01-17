//
//  WeatherRequest.swift
//  Weatherappv2
//
//  Created by Antti Karjalainen on 17/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import Foundation

class WeatherRequest {
    
    func getWeather(completion: @escaping ([Weather])){
        
        guard let url = URL(string: "//url here") else {
            fatalError("URL is not correct!")
        }
        
        URLSession.shared.dataTask(with: url) {data,_,_ in
            
            let wheaters = try!
                JSONDecoder().decode([Weather]).self, from: data)
            DispatchQueue.main.async {
                completion(wheaters
            }
            
        }.resume()
        
        
    }
}
