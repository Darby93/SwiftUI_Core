//
//  AppStorageBasic.swift
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

struct AppStorageBasic: View {
    
    @State var generalName: String?
    
    @AppStorage("name") var appStrageName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            VStack(spacing: 10) {
                Text("@State 로 저장")
                Text(generalName ?? "이름이 뭔가")
                
                Button {
                    generalName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }

            }
            .padding()
            .border(.green)
            
            VStack(spacing: 10) {
                Text("@AppStorage 로 저장")
                Text(appStrageName ?? "이름이 뭔가")
                
                Button {
                    appStrageName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.red)
        }
    }
}

struct AppStorageBasic_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBasic()
    }
}
