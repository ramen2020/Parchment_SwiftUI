//
//  CustomPageTest1View.swift
//  swiftui_parchment
//
//  Created by 宮本光直 on 2021/12/20.
//

import SwiftUI
import Parchment

struct CustomPageTest1View: View {
    let items = [
        PagingIndexItem(index: 0, title: "おはよう"),
        PagingIndexItem(index: 1, title: "こんにちわ"),
        PagingIndexItem(index: 2, title: "こんばんわ"),
    ]

    var body: some View {
        CustomPageView(items: items) { item in
            Text(item.title)
                .font(.largeTitle)
                .foregroundColor(.gray)
        }
    }
}

struct CustomPageTest1View_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageTest1View()
    }
}
