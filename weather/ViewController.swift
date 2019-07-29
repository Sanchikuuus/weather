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
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    private func updateUIWith(_ currentWeather: CurrentWeather) {
        imageView.image = currentWeather.icon
        presureLabel.text = currentWeather.presureString
        temperatureLabel.text = currentWeather.temperatureString
        appearentTemperatureLabel.text = currentWeather.appearentTemperatureString
        humidityLabel.text =  currentWeather.humidityString
    }

    @IBAction func refreshButtonTapped(_ sender: Any) {
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(icon: icon, presure: 750, humidity: 60, temperature: 10.0, appearentTemperature: 8)
        updateUIWith(currentWeather)
    }
    
}

