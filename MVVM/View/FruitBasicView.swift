//
//  FruitBasicView.swift
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

struct FruitBasicView: View {
    
    // @ObservedObject 사용하여 VM 객체화
    // SubView에서 사용(부모 View값을 넘겨 받을 경우)
//    @ObservedObject var fruitViewModel = FruitViewModel()
    
    // @StateObject 사용하여 VM 객체화
    // View 가 처음 생성, 초기화 할 때, 부모 View에서 주로 사용
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        } // : HStack
                    }
                }
            } // : List
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    NavigationLink(destination: SecondScreen(fruitViewModel: fruitViewModel),
                                   label: {
                                       Image(systemName: "arrow.right")
                                           .font(.title)
                })
            )
            .navigationTitle("과일 리스트")
        } // : Navigation
    }
}

struct SecondScreen: View {
    @ObservedObject var fruitViewModel = FruitViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }

            }
        }
    }
}

struct FruitBasicView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicView()
    }
}
