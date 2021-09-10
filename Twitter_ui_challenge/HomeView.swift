//
//  HomeView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import Foundation
import SwiftUI
import PagerTabStripView





struct HomeView: View {
    
    @ObservedObject var tweetsModel = TweetsModel()
    
    @State var selection = 0

    
    var body: some View {

        PagerTabStripView(selection: $selection) {
            PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts) // 리스트
            .pagerTabItem { // 상단 탭
                TwitterNavBarItem(title: "1번 탭")
            }.onPageAppear {
                tweetsModel.isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    tweetsModel.isLoading = false
                }
            }
            PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
            .pagerTabItem {
                TwitterNavBarItem(title: "2번 탭")
            }.onPageAppear {
                tweetsModel.isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    tweetsModel.isLoading = false
                }
            }
            PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
            .pagerTabItem {
                TwitterNavBarItem(title: "3번 탭")
            }.onPageAppear {
                tweetsModel.isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    tweetsModel.isLoading = false
                }
            }
            PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
            .pagerTabItem {
                TwitterNavBarItem(title: "4번 탭")
            }.onPageAppear {
                tweetsModel.isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    tweetsModel.isLoading = false
                }
            }
            PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
            .pagerTabItem {
                TwitterNavBarItem(title: "5번 탭")
            }.onPageAppear {
                tweetsModel.isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    tweetsModel.isLoading = false
                }
            }
        }
        .frame(alignment: .center)
        .pagerTabStripViewStyle(
            .normal(indicatorBarColor: Color.init(#colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.9215686275, alpha: 1)), tabItemSpacing: 0, tabItemHeight: 50))
    }
}

