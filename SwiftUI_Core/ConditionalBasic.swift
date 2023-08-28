//
//  Conditional.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/08/04.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/08/04
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State var showCircle = false
    @State var showRectangle = false
    @State var isLoading = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                isLoading.toggle()
            } label: {
                Text("로드중 ... : \(isLoading.description)")
            }
            
            if isLoading {
                ProgressView()
            }
            
            Button {
                showCircle.toggle()
            } label: {
                Text("원형 버튼 : \(showCircle.description)")
            }

            Button {
                showRectangle.toggle()
            } label: {
                Text("사격형 버튼 : \(showRectangle.description)")
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

struct ConditionalBasic_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBasic()
    }
}
