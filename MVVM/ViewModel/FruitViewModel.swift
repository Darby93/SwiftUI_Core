//
//  FruitViewModel.swift
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

class FruitViewModel: ObservableObject {
    
    // published wrapper 는 @State 와 비슷하게 선언하는데, class 안에서는 @Published를 사용
    // @Published 는 Fruit qodufdml rkqtdl View 에서 변경이 되면 VM에서 변경사항 적용
    @Published var fruitArray = [FruitModel]()
    @Published var isLoading = false
    
    init() {
        getFruit()
    }
    
    // Fruit 생성 arr 추가
    func getFruit() {
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 11)
        let fruit3 = FruitModel(name: "바나나", count: 22)
        let fruit4 = FruitModel(name: "아보카도", count: 180)
        let fruit5 = FruitModel(name: "체리", count: 3)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.fruitArray.append(fruit5)
            
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
