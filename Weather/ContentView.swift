//
//  ContentView.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var NightMode: Bool = false
    
    var body: some View {
        ZStack {
            background
                .edgesIgnoringSafeArea(.all)
            City
            forecast
                .padding(.top, 135)
            DayButton
                .padding(.bottom, 100)
        }
    }
    
    var background: some View {
        return NightMode ? dawnSky : daySky
    }
    
    var City: some View {
        MainWeatherView(Location: "Cupertino, CA",
                        Temperature: 76,
                        WeatherIcon: "cloud.sun.fill")
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
    
    var DayButton: some View {
        DayTimeButton(NightMode: $NightMode)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
