//
//  ShapeBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/05/18.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/05/18
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Circle
            Text("동그라밍")
                .font(.title)
            
            Circle()
//                .fill(.blue) // 이게 앞쪽
//                .foregroundColor(.pink)
//                .stroke(.purple, lineWidth: 20)
//                .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(.purple, lineWidth: 50)
                .frame(width: 200, height: 100)
                .padding()
            
            Text("타원")
                .font(.title)
            Ellipse()
                .fill(.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("캡슐")
                .font(.title)
            Capsule(style: .continuous)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100)
        }
        
        VStack(spacing: 20) {
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 100)
            
            
            Text("둥직")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1)
                .frame(width: 300, height: 200)
            
        }
    }
}

struct ShapeBasic_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBasic()
    }
}
