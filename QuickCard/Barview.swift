//
//  Barview.swift
//  QuickCard
//
//  Created by Guilherme Golfetto on 02/01/23.
//

import SwiftUI

struct Barview: View {
    
    var color = Color.clear
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var label: String = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Rectangle()
                .fill(color)
                .frame(width: width, height: height)
            
            Text(label)
                .font(.footnote)
                .rotationEffect(.degrees(-75))
                .offset(y: 20)
                .animation(nil)
        }
        
    }
}

struct Barview_Previews: PreviewProvider {
    static var previews: some View {
        Barview(color: Color.green, width: 40, height: 100, label:"Jordge")
    }
}
