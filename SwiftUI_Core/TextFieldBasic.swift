//
//  TextFieldBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/08/31.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/08/31
//

import SwiftUI

struct TextFieldBasic: View {
    
    @State var inputText = ""
    @State var userNameData = [String]()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                // TextField 한줄 - 적은양의 text 입력시 사용
//                TextField("최소 2글자 이상 입력", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(isTextEnough() ? .blue: .gray)
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // TextField 여러줄 - 긴줄의 text 입력시 사용
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                
                Button {
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            } // : VStack
            .padding()
            .navigationTitle("당신의 이름은?")
        }
    } // : Body
    
    func isTextEnough() -> Bool {
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

struct TextFieldBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBasic()
    }
}
