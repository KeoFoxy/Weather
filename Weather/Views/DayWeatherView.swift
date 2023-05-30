//
//  DayWeatherView.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

enum WeatherType {
    case cloudy
    case sunny
    case windy
    case partlyCloudy
    case raining
}

enum DaysInWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

struct DayWeatherView: View {
    var weatherType: WeatherType
    var Day: DaysInWeek
   // var Day: String
    var temperature: Int
    
    var body: some View {
        let currentWeather: String
        let currentDay: String
        
        switch weatherType {
            case .cloudy:
                currentWeather = "cloud.fill"
            case .partlyCloudy:
                currentWeather = "cloud.sun.fill"
            case .sunny:
                currentWeather = "sun.max.fill"
            case .raining:
                currentWeather = "cloud.rain.fill"
            case .windy:
                currentWeather = "wind"
        }
        
        switch Day {
            case .monday:
                currentDay = "MON"
            case .tuesday:
                currentDay = "TUE"
            case .wednesday:
                currentDay = "WED"
            case .thursday:
                currentDay = "THU"
            case .friday:
                currentDay = "FRI"
            case .saturday:
                currentDay = "SAT"
            case .sunday:
                currentDay = "SUN"
        }
        
        return VStack {
            Text(currentDay)
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            Image(systemName: currentWeather)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }
    }
}
