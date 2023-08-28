//
//  TernaryOperatorsBasic.swift
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

struct TernaryOperatorsBasic: View {
    
    @State var isStaringState = false
    
    var body: some View {
        VStack {
            Button {
                isStaringState.toggle()
            } label: {
                Text("if else 버튼: \(isStaringState.description)")
            }
            
            if isStaringState {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.blue)
                    .frame(width: 200, height: 100)
            }

            
            Button {
                isStaringState.toggle()
            } label: {
                Text("삼항연사자 버턴 : \(isStaringState.description)")
            }
            
            Text(isStaringState ? "빨강": "파랑")
            
//            if isStaringState {
//                Text("빨강")
//            } else {
//                Text("파랑")
//            }

            RoundedRectangle(cornerRadius: isStaringState ? 25.0 : 0)
                .fill(isStaringState ? .red: .blue)
                .frame(width: isStaringState ? 200: 50,
                       height: isStaringState ? 400: 100
                )
        }
    }
}

struct TernaryOperatorsBasic_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBasic()
    }
}
