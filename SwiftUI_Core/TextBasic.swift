//
//  TextBasic.swift
//  SwiftUICore
//
//  Created by jihoon jang on 2023/05/18.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/05/18
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font size
            // title, body, footnote - reponsive
            
            Text("Hello")
                .font(.title)
            //                .fontWeight(.semibold)
                .bold() // fontWeight(.bold)
                .underline(true, color: Color.red)
                .italic() // 기울기
                .strikethrough(true, color: .green) // 중간선
            
            Text("English")
                .font(.title)
                .fontWeight(.semibold)
                .underline(true, color: Color.red)
                .italic()
            
            // text 크기 지정 / 고정됨
            Text("Hello2".uppercased())
                .font(.system(size: 25, weight: .bold, design: .serif))
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬 / 멀티라인 텍스트 정렬 / 멀티라인 텍스트 정렬 / 멀티라인 텍스트 정렬")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
        }
    }
}

struct TextBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextBasic()
    }
}
