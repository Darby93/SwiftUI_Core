//
//  TransitionBasic.swift
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

struct TransitionBasic: View {
    
    @State var showTransition = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showTransition ? 1.0 : 0.0)
//                    .transition(.move(edge: .bottom))
//                    .transition(.opacity)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
        
    }
}

struct TransitionBasic_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBasic()
    }
}
