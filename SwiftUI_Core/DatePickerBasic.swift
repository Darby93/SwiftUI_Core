//
//  DatePickerBasic.swift
//  SwiftUI_Core
//
//  Created by jihoon jang on 2023/09/11.
//
// Copyright (C) Inswave Systems, Inc - All Rights Reserved
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Inswave Systems <webmaster@inswave.com>, 2023/09/11
//

import SwiftUI

struct DatePickerBasic: View {
    
    @State var selectedDate1 = Date()
    @State var selectedDate2 = Date()
    @State var selectedDate3 = Date()
    @State var selectedDate4 = Date()
    @State var selectedDate5 = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack (spacing: 20) {
                Text("현재시간: \(dateToKR(selectedDate1))")
                
                Divider()
                
                VStack {
                    DatePicker("기본 DatePicker", selection: $selectedDate1)
                        .accentColor(.red)
                        .datePickerStyle(.compact)
                    
                    Text("선택된 날짜는 \(dateToKR(selectedDate1))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("달력", selection: $selectedDate2)
                        .datePickerStyle(.graphical)
                    
                    Text("선택된 날짜는 \(dateToKR(selectedDate2))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("휠", selection: $selectedDate3)
                        .datePickerStyle(.wheel)
                    
                    Text("선택된 날짜는 \(dateToKR(selectedDate3))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: [.hourAndMinute])
                    
                    Text("선택된 날짜는 \(dateToKR(selectedDate4))")
                }
                
                Divider()
            
//                    DatePicker("시간만 선택", selection: $selectedDate5, displayedComponents: [.date])
                    
//                    Text("선택된 날짜는 \(dateToKR(selectedDate5))")
                
            } // : VStack
        } // : ScrollView
    }
    
    func dateToKR(_ selectedDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = .init(identifier: "ko_kr")
        formatter.timeZone = .init(abbreviation: "KST")
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분 ss초"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: selectedDate)
    }
}

struct DatePickerBasic_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBasic()
    }
}
