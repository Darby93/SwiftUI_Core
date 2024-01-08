//
//  iOSDeviceViewModel.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/09/12.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/09/12
//

import Foundation

class iOSDeviceViewModel: ObservableObject {
    @Published var iOSDeviceArray = [iOSDeviceModel]()
    
    init() {
        getData()
    }
    
    func getData() {
        let iphone = iOSDeviceModel(name: "아이폰")
        let iPad = iOSDeviceModel(name: "아이패드")
        let iMac = iOSDeviceModel(name: "아이맥")
        let appleWatch = iOSDeviceModel(name: "애플워치")
        
        iOSDeviceArray.append(iphone)
        iOSDeviceArray.append(iPad)
        iOSDeviceArray.append(iMac)
        iOSDeviceArray.append(appleWatch)
    }
}
