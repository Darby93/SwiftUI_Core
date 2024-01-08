//
//  SliderBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/09/11.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/09/11
//

import SwiftUI

struct SliderBasic: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("레벨:")
                Text("\(sliderValue)")
                Text(String(format: "%.1f", sliderValue))
            }
            .foregroundColor(color)
            
            // value 는 항상 float
            // in 슬라이더 범위
            // step 증감 범위
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("라벨")
                }
            )
        }
    }
}

struct SliderBasic_Previews: PreviewProvider {
    static var previews: some View {
        SliderBasic()
    }
}
