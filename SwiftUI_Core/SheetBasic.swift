//
//  SheetBasic.swift
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

struct SheetBasic: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
//            }

        }
    }
}

struct SheetBasic_Previews: PreviewProvider {
    static var previews: some View {
        SheetBasic()
    }
}
