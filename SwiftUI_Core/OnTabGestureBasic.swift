//
//  OnTabGestureBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/09/12.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/09/12
//

import SwiftUI

struct OnTabGestureBasic: View {
    
    @State var isSelected = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green: .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            }
            
            Text("2. onTabGesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("3. onTabGesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            Spacer()
        }
        .padding(40)
    }
}

struct OnTabGestureBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnTabGestureBasic()
    }
}
