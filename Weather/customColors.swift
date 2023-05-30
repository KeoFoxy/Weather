//
//  customColors.swift
//  Weather
//
//  Created by Alexander Sorokin on 30.05.2023.
//

import SwiftUI

// Colors
public let lightBlue:Color = Color(hex: "#AEE4FF")
public let daskBlue: Color = Color(hex: "#6A9CFD")
public let piggiPink: Color = Color(hex: "#FFB8D0")
public let skinPalePink: Color = Color(hex: "#FEE5E1")

// Gradients
public let skyBackground = LinearGradient(colors: [daskBlue, lightBlue],
                                          startPoint: .top,
                                          endPoint: .bottom)

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.index(after: hex.startIndex)

        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

