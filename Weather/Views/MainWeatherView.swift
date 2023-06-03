//
//  MainWeatherView.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

struct MainWeatherView: View {
    var Location: String
    var Temperature: Int
    var WeatherIcon: String
    
    var body: some View {
        VStack {
            Text(Location)
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            VStack(spacing: 10) {
                Image(systemName: WeatherIcon)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                
                Text("\(Temperature)°")
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
            }
            Spacer()
        }
    }
}


