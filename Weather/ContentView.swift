//
//  ContentView.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            skyBackground
                .edgesIgnoringSafeArea(.all)
            City
            forecast
                .padding(.top, 135)
        }
    }
    
    var City: some View {
        MainWeatherView()
    }
    
    var forecast: some View {
        HStack(spacing: 8) {
            DayWeatherView(weatherType: .windy, Day: .tuesday, temperature: 56)
            DayWeatherView(weatherType: .sunny, Day: .wednesday, temperature: 89)
            DayWeatherView(weatherType: .raining, Day: .thursday, temperature: 66)
            DayWeatherView(weatherType: .partlyCloudy, Day: .friday, temperature: 78)
            DayWeatherView(weatherType: .cloudy, Day: .saturday, temperature: 75)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
