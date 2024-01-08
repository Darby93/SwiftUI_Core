//
//  ONAppearBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/09/12.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/09/12
//

import SwiftUI

struct OnAppearBasic: View {
    
    @State var noticeText = "onAppear 시작전"
    @State var count = 0
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Text(noticeText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    } // : Loop
                } // : LazyStack
            } // : Scroll
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear 시작"
                }
            }
            .navigationTitle("생성된 박스 : \(count)")
        } // : Navigation
    }
}

struct OnAppearBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBasic()
    }
}
