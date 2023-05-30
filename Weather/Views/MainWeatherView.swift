//
//  MainWeatherView.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

struct MainWeatherView: View {
    var body: some View {
        VStack {
            Text("Cupertino, CA")
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            VStack(spacing: 10) {
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                
                Text("76°")
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
            }
            Spacer()
        }
    }
}

