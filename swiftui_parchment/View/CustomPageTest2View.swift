//
//  CustomPageTest2View.swift
//  swiftui_parchment
//
//  Created by 宮本光直 on 2021/12/22.
//

import SwiftUI
import Parchment

struct CustomPageTest2View: View {

    @State var currentText: String = "hello world"

    let items = [
        PagingIndexItem(index: 0, title: "おはよう"),
        PagingIndexItem(index: 1, title: "こんにちわ"),
        PagingIndexItem(index: 2, title: "こんばんわ"),
    ]
    
    var body: some View {
        Text(currentText)
            .padding(20)
        PageView(items: items) { item in
            Text(item.title)
                .font(.largeTitle)
                .foregroundColor(.gray)
        }
        .willScroll { pagingItem in
            print("will scroll: ", pagingItem)
            currentText = "will scroll: \(pagingItem)"
        }
        .didScroll { pagingItem in
            print("did scroll: ", pagingItem)
            currentText = "did scroll: \(pagingItem)"
        }
        .didSelect { pagingItem in
            print("did select: ", pagingItem)
            currentText = "did select: \(pagingItem)"
        }
    }
}

struct CustomPageTest2View_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageTest2View()
    }
}
