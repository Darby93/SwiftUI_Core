//
//  PaddingBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/07/31.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/07/31
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading) {
            // 1. Padding 기본
            
            Text("Hello, world!")
                .background(.yellow)
                .padding() // .padding(.all, 15)
                .padding(.leading, 20) // CSS 기준 padding
                .background(.blue)
                .padding(.bottom, 20) // CSS 기준 margin
                .background(.orange)
            
            Divider()
            
            // 2. Padding 응용
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20) // CSS 기준 padding
            
            Text("Hello, world! Hello, world! Hello, world! Hello, world! Hello, world! Hello, world! Hello, world! Hello, world!")
        }
        
        // VStack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3), radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

struct PaddingBasic_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBasic()
    }
}
