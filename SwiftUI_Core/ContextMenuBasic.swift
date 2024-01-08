//
//  ContextMenuBasic.swift
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

struct ContextMenuBasic: View {
    
    @State var statusText = ""
    @State var background: Color = .cyan
    
    var body: some View {
        VStack(spacing: 30) {
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다")
                    .font(.headline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(background)
            .cornerRadius(20)
            .contextMenu {
                Button {
                    statusText = "공유가 되었습니다."
                    background = .yellow
                } label: {
                    Label {
                        Text("Share post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                Button {
                    statusText = "신고가 되었습니다."
                    background = .red
                } label: {
                    Label {
                        Text("Report post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                }
                
                Button {
                    statusText = "좋아요 추가."
                    background = .green
                } label: {
                    Label {
                        Text("Like post")
                    } icon: {
                        Image(systemName: "hand.thumbsup")
                    }
                }
            }
        }
    }
}

struct ContextMenuBasic_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBasic()
    }
}
