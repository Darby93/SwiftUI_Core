//
//  DarkModeBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/09/11.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/09/11
//

import SwiftUI

struct DarkModeBasic: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    
                    Text("Black 색상")
                        .foregroundColor(.black)
                    
                    Text("White 색상")
                        .foregroundColor(.white)
                    
                    Text("Red 색상")
                        .foregroundColor(.red)
                    
                    Text("Asset에서 Adaptive 색상")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("@Environment 사용 Adpative 색상")
                        .foregroundColor(colorScheme == .light ? .green: .blue)
                } // : VStack
            } // : Scroll
        } // : Navigation
    }
}

struct DarkModeBasic_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBasic()
    }
}
