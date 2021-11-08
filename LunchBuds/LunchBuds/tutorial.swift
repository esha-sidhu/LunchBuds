//
//  SwiftUIView.swift
//  LunchBuds
//
//  Created by Borborick Zhu on 31/10/21.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Text("Welcome to")
                .font(.system(size: 30))
                .frame(width: 200, height: 20, alignment: .center)
                .padding(.top, 40)
                .padding(.bottom, 15)
            Text("Lunch Buds!")
                .fontWeight(.semibold)
                .font(.system(size: 45))
                .frame(width: 350, height: 40, alignment: .center)
            
            Spacer()
            
            Image("test")
                .resizable()
                .frame(width: 320, height: 320, alignment: .center)
            
            Spacer()
            Text("Don't have any friends to eat with? ")
                .font(.body)
            Spacer()
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 320, height: 50)
                .foregroundColor(.red)
                .overlay(
                    Text("Continue")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                )
            
            Spacer()
            
        }.tag(1)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
