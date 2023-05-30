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
        }
    }
    
    var City: some View {
        MainWeatherView()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
