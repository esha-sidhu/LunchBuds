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
                .frame(width: 286, height: 20, alignment: .center)
                .padding(.top, 40)
                .padding(.bottom, 15)
            Text("Lunch Buds!")
                .fontWeight(.semibold)
                .font(.system(size: 45))
                .frame(width: 286, height: 40, alignment: .center)

            Spacer()
            
            Rectangle()
                .frame(width: 326, height: 351, alignment: .center)
                .foregroundColor(Color("Color-1"))
                .padding()
            
//            Image("test")
//                .resizable()
//                .frame(width: 320, height: 320, alignment: .center)

            Spacer()
            Text("Don't have any friends to eat with? ")
                .fontWeight(.ultraLight)
                .font(.body)
                .frame(width: 324, height: 66, alignment: .center)
            
            Spacer()

            RoundedRectangle(cornerRadius: 50)
                .frame(width: 324, height: 76, alignment: .center)
                .foregroundColor(Color("Color"))
                .overlay {
                    Text("Continue")
                        .fontWeight(.light)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
                

            Spacer()

        }.tag(1)
        
        VStack {
            Spacer()
            Text("Add a profile picture")
                .font(.system(size: 36))
                .frame(width: 273, height:88, alignment: .leading)
            
            Spacer()
            
            Circle()
                .frame(width: 323, height: 323, alignment: .center)
                .foregroundColor(Color("Color-1"))
                
            Spacer()
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 169, height: 44, alignment: .center)
                .foregroundColor(Color("Color-1"))
                .overlay(content: {
                    VStack{
                        Text("Upload")
                            .fontWeight(.light)
                            .font(.system(size: 20))
                        Text("[JPG, PNG, HEIC]")
                            .fontWeight(.light)
                            .font(.system(size: 10))
                        
                    }
                    .frame(width: 169, height: 44, alignment: .center)
                    
                })
                .onTapGesture {
                    
                }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 324, height: 76, alignment: .center)
                .foregroundColor(Color("Color"))
                .overlay {
                    Text("Continue")
                        .fontWeight(.light)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
            
            Text("Skip this step")
                .font(.caption)
                .fontWeight(.ultraLight)
                .padding()
            
            
            
        }.tag(2)
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
