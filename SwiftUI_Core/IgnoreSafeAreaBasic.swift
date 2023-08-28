//
//  IgnoreSafeAreaBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/08/01.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/08/01
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
        
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
            
            
        }
        .background(.blue)
    }
}

struct IgnoreSafeAreaBasic_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaBasic()
    }
}
