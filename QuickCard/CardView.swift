//
//  CardView.swift
//  QuickCard
//
//  Created by Guilherme Golfetto on 01/01/23.
//

import SwiftUI

struct CardView: View {
    
    @State var user: User
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("CardBackground"))
                .frame(width: 300, height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("\(user.firstName)  \(user.lastName)").font(.title)
                    Text(user.title).italic()
                    
                    Spacer()
                    
                    ImageLabelView(imageName: "link", text: $user.email)
                    ImageLabelView(imageName: "location.fill", text: $user.address)
                    ImageLabelView(imageName: "location.fill", text: $user.companyUrl)
                    
                }.padding().foregroundColor(.white)
                
                Spacer()
            }
        }.frame(width: 300, height: 200)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(firstName: "Guilherme", lastName: "Golfetto", title: "iOS Developer", email: "gui.golf@me.com", companyUrl: "@somehing", address:     "Rua da silva sauro",
                            visit: Visit(
                                views: 50,
                                events: 80,
                                badges: 9,
                                actions: 10,
                                duration: 10
                            ))
        )
    }
}
