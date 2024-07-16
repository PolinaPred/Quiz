import SwiftUI

struct Results: View {
    
    var body: some View {
        HStack{
            NavigationLink(destination: Question2().navigationBarBackButtonHidden(true)){
                Image("next")
                    .resizable()
                    .rotationEffect(.degrees(180))
                    .frame(width: 40, height: 40)
            }
            VStack{
                Spacer()
                Text("Here are your results:")
                Spacer()
                HStack{
                    Image(weatherSelected)
                        .resizable()
                        .aspectRatio(.fill)
                    Image(characterSelected)
                        .resizable()
                        .aspectRatio(.fill)
                    Image(petSelected)
                        .resizable()
                        .aspectRatio(.fill)
                }
                Spacer()
            }
            Image("")
                .resizable()
                .frame(width:40)
        }
    }
}

#Preview {
    Results()
}
