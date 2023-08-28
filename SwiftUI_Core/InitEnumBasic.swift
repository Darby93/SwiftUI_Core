//
//  InitEnumBasic.swift
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

struct InitEnumBasic: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple, orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
    }
}

struct InitEnumBasic_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitEnumBasic(count: 100, fruit: .apple)
            InitEnumBasic(count: 46, fruit: .orange)
        }
    }
}
