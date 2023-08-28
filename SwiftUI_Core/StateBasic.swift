//
//  StateBasic.swift
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

struct StateBasic: View {
    
    @State var backgroundColor: Color = .green
    @State var myTitle = "버튼 안눌림"
    @State var count = 0
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트 : \(count)")
                    
                HStack(spacing: 20) {
                    Button {
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBasic_Previews: PreviewProvider {
    static var previews: some View {
        StateBasic()
    }
}
