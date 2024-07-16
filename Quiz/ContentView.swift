//
//  ContentView.swift
//  Quiz
//
//  Created by Scholar on 7/15/24.
//

import SwiftUI
var characterSelected = ""

struct ContentView: View {
    
    @State var characterPick = ""
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                Image("")
                    .resizable()
                    .frame(height:100)
                Text("Pick a color:")
                    .font(.title)
                HStack{
                    Spacer()
                    Image("")
                        .resizable()
                        .frame(width:40)
                    Spacer()
                    VStack{
                        Spacer()
                        ZStack{
                            Rectangle()
                                .foregroundColor(.purple)
                                .frame(height:50)
                                .cornerRadius(40)
                            Button("Purple"){
                                characterPick = "purple"
                                characterSelected = "purple"
                            }
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        }
                        Spacer()
                        ZStack{
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(height:50)
                                .cornerRadius(40)
                            Button("Red"){
                                characterPick = "red"
                                characterSelected = "red"
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
                            Button("White"){
                                characterPick = "white"
                                characterSelected = "white"
                            }
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        }
                        Spacer()
                    }
                    NavigationLink(destination: Question2().navigationBarBackButtonHidden(true)){
                        Image("next")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    Spacer()
                }
                if(characterPick != ""){
                    Image(characterPick)
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
    ContentView()
}
