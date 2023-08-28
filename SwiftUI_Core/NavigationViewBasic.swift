//
//  NavigationViewBasic.swift
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

struct NavigationViewBasic: View {
    
    @State var showSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    // destination 목적지
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            } // : VStack
            
            // 제목
            .navigationTitle("페이지 제목")
            
            // .automatic: 자동, .inline : 상단에 작게, large : leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.automatic)
            
            // 네이게이션 타이틀, 바를 감춤
            .navigationBarBackButtonHidden()
            
            // 상단 좌우에 icon, text, button 을 사용하여 나타냄
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
        } // : Navigation View
        .sheet(isPresented: $showSheet) {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("설정 페이지 입니다")
                    .font(.largeTitle)
            }
        }
    }
}

struct NavigationViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBasic()
    }
}
