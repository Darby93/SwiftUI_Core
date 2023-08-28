//
//  ExtractSubViewBasic.swift
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

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            ItemBasic(title: "사과", count: 4, color: .red)
            ItemBasic(title: "파인애플", count: 13, color: .yellow)
            ItemBasic(title: "메론", count: 10, color: .green)
        }
    }
}

struct ExtractSubViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewBasic()
    }
}
