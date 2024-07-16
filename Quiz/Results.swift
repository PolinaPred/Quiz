import SwiftUI

struct Results: View {
    
    var body: some View {
        VStack{
            Spacer()
            Text("Here are your results:")
            Spacer()
            HStack{
                Image(weatherSelected)
                Image(characterSelected)
                Image(petSelected)
            }
            Spacer()
        }
    }
}

#Preview {
    Results()
}
