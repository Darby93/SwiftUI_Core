//
//  LazyGridBasic.swift
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

struct LazyGridBasic: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    let title: [String] = Array(1...1000).map { "목록 \($0)" }
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            
            LazyVGrid(
                columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders]
            ) {
                Section(header: Text("Section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } // Section 1
                
                
                Section(header: Text("Section2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )

                    }
                } // Section 2
            }
        }
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct LazyGridBasic_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBasic()
    }
}
