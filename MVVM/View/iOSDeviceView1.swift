//
//  iOSDeviceView1.swift
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

struct iOSDeviceView1: View {
    @StateObject var vm = iOSDeviceViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.iOSDeviceArray) { item in
                    NavigationLink {
                        iOSDeviceView2(seletedItem: item.name)
                    } label: {
                        Text(item.name)
                    }
                }
            }
        }
        .environmentObject(vm)
    }
}

struct iOSDeviceView1_Previews: PreviewProvider {
    static var previews: some View {
        iOSDeviceView1()
    }
}
