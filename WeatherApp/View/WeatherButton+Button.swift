//
//  WeatherButton+Button.swift
//  WeatherApp
//
//  Created by aykut ipek on 27.06.2023.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Button(title) {
            print("Button Tapped")
        }.frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

