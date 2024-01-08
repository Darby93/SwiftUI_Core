//
//  iOSDeviceView2.swift
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

struct iOSDeviceView2: View {
    let seletedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("당신이 선택한 기기는 ?")
                    .font(.title)
                
                Text(seletedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                
                NavigationLink {
                    iOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 -> ")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct iOSDeviceView2_Previews: PreviewProvider {
    static var previews: some View {
        iOSDeviceView2(seletedItem: "아이폰")
    }
}
