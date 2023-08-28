//
//  ListBasic.swift
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

struct ListBasic: View {
    
    @State var fruits = [
        "사과", "오렌지", "바나나", "수박"
    ]
    
    @State var meats = [
        "소고기", "돼지고기", "닭고기"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // : Section

                Section {
                    ForEach(meats, id: \.self) { meat in
                        Text(meat)
                    }
                } header: {
                    Text("고기종류")
                        .font(.headline)
                        .foregroundColor(.red)
                } // : Section
                
            } // : List
            .navigationTitle("우리동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        } // : Navigation
    } // : Body
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }

    }
}

struct ListBasic_Previews: PreviewProvider {
    static var previews: some View {
        ListBasic()
    }
}
