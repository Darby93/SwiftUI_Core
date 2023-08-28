//
//  AnimationBasic.swift
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

struct AnimationBasic: View {
    
    @State var isAnimated = false
    
    let timing: Double = 1.0
    
    var body: some View {
        
        // 1번 View
        VStack {
            Button {
                withAnimation(
                    .default
//                        .repeatForever()
                ) {
                    isAnimated.toggle()
                }
                
            } label: {
                Text("Button")
            }

            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50: 0)
                .fill(isAnimated ? .red: .green)
                .frame(width: isAnimated ? 100: 300,
                       height: isAnimated ? 100: 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 300: 0))
                .offset(y: isAnimated ? 300: 0)
            
            Spacer()
        }
        
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // liner animation 처음부터 끝까지 속도가 일정
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
            
        }
        
        VStack {
            Button {
                withAnimation(.spring(
                    response: 0.1, // 진동을 완료하는 데 걸리는 시간
                    dampingFraction: 0.1, // 얼마나 빠르게 스프링이 정지하는 속도제어
                    blendDuration: 0 // 다른 애니메이션 간의 전환 길이 제어
                )) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
        }
    }
}

struct AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasic()
    }
}
