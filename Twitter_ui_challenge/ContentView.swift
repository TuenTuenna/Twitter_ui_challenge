//
//  ContentView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
               .tabItem {
                   Label("홈", systemImage: "house")
               }
            StickyHeaderTestView()
               .tabItem {
                   Label("검색", systemImage: "magnifyingglass")
               }
            Text("알림")
                .tabItem {
                    Label("알림", systemImage: "bell")
                }
            Text("메일")
                .tabItem {
                    Label("메일", systemImage: "envelope")
                }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
