//
//  IconBasic.swift
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

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            
            // redermode 에서 original 로 하게되면 실제 color 에서 multi color 변경됨
            // 즉 고유 값 컬러로 변경되어 color 를 변경하더라도 변경되지 않는 컬러 값이 됨
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

struct IconBasic_Previews: PreviewProvider {
    static var previews: some View {
        IconBasic()
    }
}
