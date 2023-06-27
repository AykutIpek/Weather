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
            ConfigureGradient(topColor: .blue, bottomColor: Color("LightBlue"))
            VStack{
                CityNameView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temparatureText: 11)
                HStack{
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 10)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 12)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 10)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 8)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 0)
                }
                Spacer()
                WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct CityNameView: View {
    var cityName: String

    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temparatureText: Int
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text("\(temparatureText)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}

