//
//  ToggleBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/08/31.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/08/31
//

import SwiftUI

struct ToggleBasic: View {
    @State var toggleIsOn = false
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태 : ")
                Text(toggleIsOn ? "온라인": "오프라인")
            }
            
            Toggle(isOn: $toggleIsOn) {
                Text("로그인 상태 선택")
            }.toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBasic_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBasic()
    }
}
