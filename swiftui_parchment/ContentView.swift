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
                NavigationLink("Scroll CustomPageView", destination: CustomPageTest2View())
            }
            .navigationBarTitleDisplayMode(.inline)
            navigationBarTitle("Parchment test")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
