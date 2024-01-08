//
//  PickerBasic.swift
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

struct PickerBasic: View {
    let typeOfPhone = ["애플", "삼성", "샤오미", "기타"]
    
    @State var selectedIndex = 0
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0 ..< typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        }
                    } // : Picker
//                    .pickerStyle(.wheel)
                } // : Section
                
                Text("핸드폰 제조사는 \(typeOfPhone[selectedIndex]) 입니다")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
            } // : From
            .navigationTitle("현재 사용중인 핸드폰 기종은?")
            .navigationBarTitleDisplayMode(.inline)
        } // : Navigation
    }
}

struct PickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        PickerBasic()
    }
}
