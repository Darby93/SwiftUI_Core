//
//  FrameBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/07/31.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/07/31
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        // 1
        VStack(spacing: 20) {
            Text("안녕, 세계")
                .font(.title)
                .background(.green)
                .frame(width: 200, height: 200, alignment: .center)
                .background(.blue)
            
            Divider()

            //2
            Text("안녕, 세계")
                .font(.title)
                .background(.red)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(.yellow)
        }
        
        // 3
        VStack(spacing: 20) {
            Text("안녕, 세계")
                .font(.title)
                .background(.green)
                .frame(height: 100, alignment: .top)
                .background(.orange)
                .frame(width: 200)
                .background(.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.pink)
                .frame(height: 400)
                .background(.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(.yellow)
        }
    }
}

struct FrameBasic_Previews: PreviewProvider {
    static var previews: some View {
        FrameBasic()
    }
}
