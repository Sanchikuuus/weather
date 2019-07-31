//
//  ViewController.swift
//  weather
//
//  Created by Sashko Shel on 7/29/19.
//  Copyright © 2019 Sashko Shel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var presureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var apparentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
//    lazy var weatherManager = APIWeatherManager(apiKey: "8ceb75b92983c3e34fc681d0539183ab")
//    let coordinates = Coordinates(latitude: 50.501885, longitude: 30.606308)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    private func updateUIWith(_ currentWeather: CurrentWeather) {
        imageView.image = currentWeather.icon
        presureLabel.text = currentWeather.presureString
        temperatureLabel.text = currentWeather.temperatureString
        apparentTemperatureLabel.text = currentWeather.apparentTemperatureString
        humidityLabel.text =  currentWeather.humidityString
    }

    @IBAction func refreshButtonTapped(_ sender: Any) {
       
       
    }
    
}

