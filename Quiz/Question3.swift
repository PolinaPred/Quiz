import SwiftUI

var petSelected = ""

struct Question3: View {
    
    @State var animal = ""
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                Image("")
                    .resizable()
                    .frame(height:100)
                Text("Pick a pet:")
                    .font(.title)
                HStack{
                    Spacer()
                    NavigationLink(destination: Question2().navigationBarBackButtonHidden(true)){
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
                            Button("Cat"){
                                animal = "cat"
                                petSelected = "cat"
                            }
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        }
                        Spacer()
                        ZStack{
                            Rectangle()
                                .foregroundColor(.brown)
                                .frame(height:50)
                                .cornerRadius(40)
                            Button("Dog"){
                                petSelected = "dog"
                                animal = "dog"
                            }
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        }
                        Spacer()
                        ZStack{
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(height:50)
                                .cornerRadius(40)
                            Button("Turtle"){
                                petSelected = "turtle"
                                animal = "turtle"
                            }
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        }
                        Spacer()
                    }
                    NavigationLink(destination: Results().navigationBarBackButtonHidden(true)){
                        Image("next")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    Spacer()
                }
                if(animal != ""){
                    Image(animal)
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
    Question3()
}
