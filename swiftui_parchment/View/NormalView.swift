//
//  NormalView.swift
//  swiftui_parchment
//
//  Created by 宮本光直 on 2021/12/17.
//

import Parchment
import SwiftUI
import UIKit

struct NormalView: View {
    let items = [
        PagingIndexItem(index: 0, title: "おはよう"),
        PagingIndexItem(index: 1, title: "こんにちわ"),
        PagingIndexItem(index: 2, title: "こんばんわ"),
    ]

    var body: some View {
        PageView(items: items) { item in
            Text(item.title)
                .font(.largeTitle)
                .foregroundColor(.gray)
        }
    }
}

struct NormalView_Previews: PreviewProvider {
    static var previews: some View {
        NormalView()
    }
}
