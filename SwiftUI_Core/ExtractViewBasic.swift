//
//  ExtractViewBasic.swift
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

struct ExtractViewBasic: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Extract View")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ExtractViewBasic()
    }
}
