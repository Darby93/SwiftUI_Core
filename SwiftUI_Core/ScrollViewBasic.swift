//
//  ScrollViewBasic.swift
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

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView(.vertical ,showsIndicators: true) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay {
                            Text("\(index) 번")
                                .font(.title)
                        }
                }
            }
        }
        
        ScrollView(.horizontal ,showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300, height: 300)
                        .overlay {
                            Text("\(index) 번")
                                .font(.title)
                        }
                }
            }
        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<9) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBasic()
    }
}
