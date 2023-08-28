//
//  ForEach.swift
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

struct ForEachLoopBasic: View {
    
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                }
            }
            
            Divider()
            
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoopBasic()
    }
}
