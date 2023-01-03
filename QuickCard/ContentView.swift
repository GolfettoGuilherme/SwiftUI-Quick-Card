//
//  ContentView.swift
//  QuickCard
//
//  Created by Guilherme Golfetto on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(User.users) { user in
                        NavigationLink(destination: VisitorInfoView(user: user)) {
                            CardView(user: user)
                                .padding(.vertical)
                        }
                    }
                }
            }
        }
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
