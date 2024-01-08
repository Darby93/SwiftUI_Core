//
//  AccordionTest.swift
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

struct AccordionView<Label, Content> : View where Label : View, Content : View  {
    @Binding var expandedIndex: Int?
    let sectionCount: Int
    @ViewBuilder let label: (Int) -> Label
    @ViewBuilder let content: (Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<sectionCount, id: \.self) { index in
                DisclosureGroup(isExpanded: .init(get: {
                    expandedIndex == index
                }, set: { value in
                    expandedIndex = value ? index : nil
                }), content: {
                    content(index)
                }, label: {
                    label(index)
                })
                .transaction { transaction in
                    transaction.animation = nil
                }
            }
        }
    }
}

struct AccordionViewTest: View {
  @State private var expandedIndex: Int? = nil
  private let sections = [
    SymbolGroup(title: "Weather",
                symbols: [
                  "sun.min", "sun.min.fill", "sun.max", "sunrise", "moon", "cloud.fog.fill", "cloud.hail"
                ]),
    SymbolGroup(title: "Devices",
                symbols: [
                  "keyboard", "airtag", "display", "pc", "macpro.gen2", "macmini", "flipphone"
                ]),
    SymbolGroup(title: "Transport",
                symbols: [
                  "airplane", "airplane.circle", "car.2", "tram.fill", "car.ferry", "bicycle", "sailboat.fill"
                ]),
    SymbolGroup(title: "Fitness",
                symbols: [
                  "figure.walk", "figure.boxing", "figure.golf", "figure.roll", "figure.outdoor.cycle", "dumbbell", "baseball.fill"
                ]),
    SymbolGroup(title: "Time",
                symbols: [
                  "clock", "clock.fill", "alarm", "deskclock", "timer.circle", "timer.square", "hourglass"
                ]),
  ]

  var body: some View {
    VStack {
      Text("Expanded index: \((expandedIndex == nil) ? "none" : "\(expandedIndex!)")")
        AccordionView(expandedIndex: $expandedIndex,
                      sectionCount: sections.count,
                      label: { index in
          Text(sections[index].title)
        },
                      content: { index in
          HStack {
            ForEach(sections[index].symbols, id: \.self) { symbol in
              Image(systemName: symbol)
                .frame(width: 32, height: 32)
            }
          }
        })
      Spacer()
    }
    .padding()
  }

  struct SymbolGroup {
    let title: String
    let symbols: [String]
  }
}

struct AccordionView_Previews: PreviewProvider {
    static var previews: some View {
        AccordionViewTest()
    }
}
