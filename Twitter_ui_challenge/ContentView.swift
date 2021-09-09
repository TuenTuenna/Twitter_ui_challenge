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
                   Label("PagerTab", systemImage: "magnifyingglass")
               }
            StickyHeaderWithLazyVStack()
                .tabItem {
                    Label("lazyVStack", systemImage: "bell")
                }
            LazyVStackMultiSectionView()
                .tabItem {
                    Label("lazyVStackPinned", systemImage: "envelope")
                }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
