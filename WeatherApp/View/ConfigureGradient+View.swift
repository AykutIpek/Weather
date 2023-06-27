//
//  ConfigureGradient+View.swift
//  WeatherApp
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct ConfigureGradient: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}
