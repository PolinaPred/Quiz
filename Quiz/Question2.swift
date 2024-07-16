//
//  ContentView.swift
//  Quiz
//
//  Created by Scholar on 7/15/24.
//

import SwiftUI

var weatherSelected = ""

struct Question2: View {
    
    @State var weather = ""
    
    var body: some View {
        NavigationStack{
                VStack {
                    Spacer()
                    Image("")
                        .resizable()
                        .frame(height:100)
                    Text("Pick a weather:")
                        .font(.title)
                    HStack{
                        Spacer()
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                            Image("next")
                                .resizable()
                                .rotationEffect(.degrees(180))
                                .frame(width: 40, height: 40)
                        }
                        Spacer()
                        VStack{
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.yellow)
                                    .frame(height:50)
                                    .cornerRadius(40)
                                Button("Sunny"){
                                    weather = "sun"
                                    weatherSelected = "sun"
                                }
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            }
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .frame(height:50)
                                    .cornerRadius(40)
                                Button("Cloudy"){
                                    weather = "cloud"
                                    weatherSelected = "cloud"
                                }
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            }
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(height:50)
                                    .cornerRadius(40)
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width:270, height:40)
                                    .cornerRadius(40)
                                Button("Snowy"){
                                    weather = "snow"
                                    weatherSelected = "snow"
                                }
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                            }
                            Spacer()
                        }
                        NavigationLink(destination: Question3().navigationBarBackButtonHidden(true)){
                            Image("next")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        Spacer()
                    }
                    if(weather != ""){
                        Image(weather)
                    } else {
                        Image("")
                            .resizable()
                            .frame(height:160)
                    }
                    Spacer()            }
            }
        }
}

#Preview {
    Question2()
}
