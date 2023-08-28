//
//  SecondNavigationView.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/08/25.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/08/25
//

import SwiftUI

struct SecondNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

                NavigationLink {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("세번째 페이지 입니다")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct SecondNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SecondNavigationView()
    }
}
