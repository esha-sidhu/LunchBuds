//
//  aboutView.swift
//  LunchBuds
//
//  Created by Esha Sidhu on 11/17/21.
//

import SwiftUI
import CoreData

struct aboutView: View {
    @State var textFieldText : String = ""
    var body: some View {
        VStack{
            
            Text("About you")
                .font(.system(size: 30))
                .frame(width: 286, height: 20, alignment: .leading)
                .padding(.top, 40)
                .padding(.bottom, 15)
            
            Text("[Info on what this information will be used for]")
                .font(.system(size: 10))
                .frame(width: 286, height: 20, alignment: .leading)
                .padding(.bottom, 15)
            
            aboutTitleText(textInput: "Year")
            aboutTextView(textFieldTextExtract: textFieldText, placeholder: "")
            aboutTitleText(textInput: "Major")
            aboutTextView(textFieldTextExtract: textFieldText, placeholder: "")
            Spacer()
                .frame(height: 180)
            Button(action: {}, label: {
                Text("Continue")
                    .padding()
                    .frame(width: 330)
                    .background(Color("theme").cornerRadius(30))
                    .foregroundColor(.white)
                    .font(.title)
            })
                
        }
        .padding(.horizontal, 40)
    }
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        aboutView()
    }
}

struct aboutTitleText: View {
    
    var textInput : String
    
    var body: some View {
        Text(textInput)
            .font(.system(size: 30))
            .frame(width: 200, height: 20, alignment: .leading)
            
            .padding(.trailing, 95)
            .padding(.top, 40)
            .padding(.bottom, 10)
    }
}

struct aboutTextView: View {
    
    @State var textFieldTextExtract : String
    var placeholder : String
    
    var body: some View {
        TextField(placeholder, text: $textFieldTextExtract)
            .padding(.horizontal, 10)
            .padding(.vertical,10)
            .background(Color.gray.opacity(0.3))
            .font(.system(size: 20))
    }
}

