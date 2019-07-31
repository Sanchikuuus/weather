//
//  CurrentWeather.swift
//  weather
//
//  Created by Sashko Shel on 7/31/19.
//  Copyright © 2019 Sashko Shel. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather: Codable {
    let icon: String
    let presure: String
    let humidity: String
    let temperature: String
    let apparentTemperature: String
}

extension CurrentWeather {
    var presureString: String {
        return "\(presure) mm"
    }
    
    var humidityString: String {
        return "\(humidity) %"
    }
    
    var temperatureString: String {
        return "\(temperature)°C"
    }
    
    var apparentTemperatureString: String {
        return "Feels like \(apparentTemperature)°C"
    }
}

class APIWeatherManager {
    
    func getData() {
        guard let url = URL(string: "https://api.darksky.net/forecast/8ceb75b92983c3e34fc681d0539183ab/50.5018,30.6063") else {
            print("URL FAIL!")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if error != nil {
                guard let data = data else { return }
                
                do {
                    let parsedData = try JSONSerialization.jsonObject(with: data) as? [String : AnyObject]
                    guard let safeParsedData = parsedData else { return }
                    let currentlyData = safeParsedData["currently"]!
//                    let curentlyParsedData = try JSONSerialization.data(withJSONObject: currentlyData) as? [String : AnyObject]
//
//                    print(curentlyParsedData)
                } catch {
                
                }
//            } else {
                //                    let alert = UIAlertController(title: "Something wrong", message: "Can't get data from internet", preferredStyle: .alert)
                //                    let alertOkButton = UIAlertAction(title: "OK", style: .default, handler: nil)
//            }
            }.resume()
        
    }
    
}
