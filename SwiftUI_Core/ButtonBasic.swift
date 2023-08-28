//
//  ButtonBasic.swift
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

struct ButtonBasic: View {
    
    @State var mainTitle = "아직 버튼 안눌림"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button {
                // action
                self.mainTitle = "리셋"
            } label: {
                // label
                Text("리셋 버튼")
            }
            
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            Button {
                // action
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                // label
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Divider()
            
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }

            Button {
                // action
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                // label
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.5)
                    )
            }
        }
    }
}

struct ButtonBasic_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBasic()
    }
}
