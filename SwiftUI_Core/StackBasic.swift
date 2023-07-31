//
//  StackBasic.swift
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

struct StackBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        HStack(spacing: 20) {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.green)
                .frame(width: 130, height: 130)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                }
                .background(.white)
            }
            .background(.black)
        }
        
        VStack(spacing: 50) {
            // ZStack 을 사용해서 원에 1을 표현 - layer 가 복잡할때 ZStack 사용하면 좋음
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // Background를 사용해서 원에 1을 동일하게 표현 - layer 가 단순할 경우 추천
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StackBasic_Previews: PreviewProvider {
    static var previews: some View {
        StackBasic()
    }
}
