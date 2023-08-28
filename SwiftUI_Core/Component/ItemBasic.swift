//
//  ItemBasic.swift
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

struct ItemBasic: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
                
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

struct ItemBasic_Previews: PreviewProvider {
    static var previews: some View {
        ItemBasic(title: "사과", count: 12, color: .red)
            .previewLayout(.sizeThatFits)
    }
}
