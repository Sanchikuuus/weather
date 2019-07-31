//
//  CurrentWeather.swift
//  weather
//
//  Created by Sashko Shel on 7/31/19.
//  Copyright © 2019 Sashko Shel. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather {
    let icon: UIImage
    let presure: Double
    let humidity: Double
    let temperature: Double
    let apparentTemperature: Double
}

extension CurrentWeather {
    var presureString: String {
        return "\(Int(presure)) mm"
    }
    
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
    
    var temperatureString: String {
        return "\(temperature)°C"
    }
    
    var apparentTemperatureString: String {
        return "Feels like \(apparentTemperature)°C"
    }
}
