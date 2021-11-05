//
//  signUpView.swift
//  LunchBuds
//
//  Created by Michael Peng on 11/4/21.
//

import SwiftUI

struct signUpView: View {
    @State var textFieldText : String = ""
    var body: some View {
        VStack{
            
            SignUpTitleText(textInput: "First Name")
            SignUpTextView(textFieldTextExtract: textFieldText, placeholder: "First Name")
            SignUpTitleText(textInput: "Last Name")
            SignUpTextView(textFieldTextExtract: textFieldText, placeholder: "Last Name")
            SignUpTitleText(textInput: "Email")
            SignUpTextView(textFieldTextExtract: textFieldText, placeholder: "Email")
            SignUpTitleText(textInput: "Password")
            SignUpTextView(textFieldTextExtract: textFieldText, placeholder: "Password")
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

struct signUpView_Previews: PreviewProvider {
    static var previews: some View {
        signUpView()
    }
}

struct SignUpTitleText: View {
    
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

struct SignUpTextView: View {
    
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
