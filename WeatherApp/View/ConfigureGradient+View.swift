//
//  ConfigureGradient+View.swift
//  WeatherApp
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct ConfigureGradient: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}
