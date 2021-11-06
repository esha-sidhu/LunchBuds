//
//  additionalInfo.swift
//  LunchBuds
//
//  Created by jenny nuo on 11/5/21.
//

import SwiftUI

struct additionalInfo: View {
    @State var textFieldText : String = ""
    var body: some View {
        VStack{
            additionalInfoTitle(textInput: "Instagram")
            additionalInfoTextView(textFieldTextExtract: textFieldText, placeholder: " @username")
            additionalInfoTitle(textInput: "Snapchat")
            additionalInfoTextView(textFieldTextExtract: textFieldText, placeholder: " @username")
            additionalInfoTitle(textInput: "Fun facts")
            additionalInfoText(textInput: "What is your favorite dining hall?")
            additionalInfoTextView(textFieldTextExtract: textFieldText, placeholder: "")
            additionalInfoText(textInput: "What are you craving right now?")
            additionalInfoTextView(textFieldTextExtract: textFieldText, placeholder: "")
        }
    }
}

             
struct additionalInfoTitle: View {
    var textInput : String
    var body: some View {
        Text(textInput)
            .font(.system(size:30))
            .frame(width:225, height: 20, alignment: .leading)
            .padding(.trailing, 95)
            .padding(.top, 20)
            .padding(.bottom, 20)
    }
}

struct additionalInfoText: View {
    var textInput : String
    var body: some View {
        Text(textInput)
            .font(.system(size:20))
            .frame(width:320, height: 20, alignment: .leading)
//            .padding(.trailing, 95)
            .padding(.top, 20)
            .padding(.bottom, 20)
    }
}

struct additionalInfoTextView: View {
    @State var textFieldTextExtract : String
    var placeholder : String
    var body : some View {
        TextField(placeholder, text: $textFieldTextExtract)
            .frame(width: 300, height: 20, alignment: .leading)
            .padding(.horizontal,10)
            .padding(.vertical,10)
            .background(Color.gray.opacity(0.3))
            .font(.system(size: 20))
    }
}
             

struct additionalInfo_Previews: PreviewProvider {
    static var previews: some View {
        additionalInfo()
    }
}
