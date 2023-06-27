//
//  ContentView.swift
//  WeatherApp
//
//  Created by aykut ipek on 27.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            ConfigureGradient()
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack{
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 10)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 12)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 10)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 8)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 0)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 40, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
