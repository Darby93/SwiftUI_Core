//
//  BindingBasic.swift
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

struct BindingBasic: View {
    
    @State var backgroundColor: Color = .green
    @State var title = "Binding Basic View"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBasic_Previews: PreviewProvider {
    static var previews: some View {
        BindingBasic()
    }
}
