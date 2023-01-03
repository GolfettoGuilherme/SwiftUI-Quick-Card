//
//  VisitorInfoView.swift
//  QuickCard
//
//  Created by Guilherme Golfetto on 02/01/23.
//

import SwiftUI

struct VisitorInfoView: View {
    
    @State var user: User
    @State var isChartHidden = true
    @State var isChartLoaded = false
    
    var body: some View {
        VStack {
            
            CardView(user: user)
                .gesture(TapGesture()
                    .onEnded {
                        withAnimation(.easeInOut, {
                            self.isChartHidden.toggle()
                        })
                    }
            )
            
            if !isChartHidden {
                GeometryReader { proxy in
                    
                    HStack(alignment: .bottom) {
                        
                        Barview(
                            color: Color.green,
                            width: proxy.size.width * 0.16,
                            height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.events) : 0.0,
                            label: "Events"
                        )
                        
                        Barview(
                            color: Color.green,
                            width: proxy.size.width * 0.16,
                            height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.badges) : 0.0,
                            label: "Badges"
                        )
                        
                        Barview(
                            color: Color.green,
                            width: proxy.size.width * 0.16,
                            height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.duration) : 0.0,
                            label: "Duration"
                        )
                        
                        Barview(
                            color: Color.green,
                            width: proxy.size.width * 0.16,
                            height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.actions) : 0.0,
                            label: "Actions"
                        )
                        
                        Barview(
                            color: Color.green,
                            width: proxy.size.width * 0.16,
                            height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views) : 0.0,
                            label: "Views"
                        )
                        
                    }.frame(height: 0.5 * proxy.size.height)
                        .animation(.easeInOut(duration: 1.0))
                        .onAppear {
                            self.isChartLoaded = true
                        }
                }
                .transition(.move(edge: .bottom))
                .onDisappear {
                    self.isChartLoaded = false
                }
            }
            
        }
    }
}

struct VisitorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoView(user:
            User(firstName: "Guilherme", lastName: "Golfetto", title: "iOS Developer", email: "gui.golf@me.com", companyUrl: "@somehing", address:     "Rua da silva sauro",
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
