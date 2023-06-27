//
//  ConfigureGradient+View.swift
//  WeatherApp
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct ConfigureGradient: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient:
                        Gradient(colors: [isNight ? .black : .blue,
                                          isNight ? .gray : Color("LightBlue")]),
                       startPoint: .top, endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
    }
}
