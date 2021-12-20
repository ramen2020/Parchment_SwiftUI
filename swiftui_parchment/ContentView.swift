//
//  ContentView.swift
//  swiftui_parchment
//
//  Created by 宮本光直 on 2021/12/17.
//

import Parchment
import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("NormalView", destination: NormalView())
                NavigationLink("CustomPageView", destination: CustomPageTest1View())
            }
            .navigationBarTitleDisplayMode(.inline)
            navigationBarTitle("Parchment test")
        }
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
