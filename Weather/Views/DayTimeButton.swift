//
//  DayTimeButton.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

struct DayTimeButton: View {
    @Binding var NightMode: Bool
    
    var body: some View {
        return VStack(alignment: .center) {
            Spacer()
            Button(action: {
                if NightMode { NightMode = false }
                else { NightMode = true }
            }) {
                Text("Change Day Time")
                    .frame(width: 280, height: 50)
                    .background(Color.white)
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .cornerRadius(10)
            }
        }
    }
}
