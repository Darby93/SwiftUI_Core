//
//  Gradient.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/06/08.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/06/08
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.yellow, .purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        colors: [.blue, .green],
                        center: .topLeading,
                        angle: .degrees(225))
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientBasic_Previews: PreviewProvider {
    static var previews: some View {
        GradientBasic()
    }
}
