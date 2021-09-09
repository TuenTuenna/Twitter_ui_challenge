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
    
    @State private var numbers = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9]
    
    var body: some View {
        
        StickyHeaderView {
            ColorSelectionView()
        }
        
//        StickyHeaderView {
//            PagerTabStripView(selection: $selection) {
//                ColorSelectionView()
//            }
//        }
        
        
//        StickyHeaderView{
//
//            ForEach(numbers, id: \.self) {
//                Text("\($0)").padding(20).background(Color.init(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))).cornerRadius(10).foregroundColor(.white)
//                    .frame(idealWidth: .infinity)
//            }
//        }
        
//        StickyHeaderView{
//            PagerTabStripView(selection: $selection) {
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)").padding(20).background(Color.init(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))).cornerRadius(10).foregroundColor(.white)
//                        .frame(idealWidth: .infinity)
//                }
//                .pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "1번 탭")
//                }
//                
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)").padding(20).background(Color.init(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))).cornerRadius(10).foregroundColor(.white)
//                        .frame(idealWidth: .infinity)
//                }
//                .pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "1번 탭")
//                }
//            }
//        }
        
//        StickyHeaderView {
//            PagerTabStripView(selection: $selection) {
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)")
//                }.pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "1번 탭")
//                }
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)")
//                }.pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "2번 탭")
//                }
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)")
//                }.pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "3번 탭")
//                }
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)")
//                }.pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "4번 탭")
//                }
//                ForEach(numbers, id: \.self) {
//                    Text("\($0)")
//                }.pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "5번 탭")
//                }
//            }
//            .frame(alignment: .center)
//            .pagerTabStripViewStyle(
//                .normal(indicatorBarColor: Color.init(#colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.9215686275, alpha: 1)), tabItemSpacing: 0, tabItemHeight: 50))
//        }
        
        
//        StickyHeaderView {
//            PagerTabStripView(selection: $selection) {
//                PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts) // 리스트
//                .pagerTabItem { // 상단 탭
//                    TwitterNavBarItem(title: "1번 탭")
//                }.onPageAppear {
//                    tweetsModel.isLoading = true
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                        tweetsModel.isLoading = false
//                    }
//                }
//                PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
//                .pagerTabItem {
//                    TwitterNavBarItem(title: "2번 탭")
//                }.onPageAppear {
//                    tweetsModel.isLoading = true
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                        tweetsModel.isLoading = false
//                    }
//                }
//                PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
//                .pagerTabItem {
//                    TwitterNavBarItem(title: "3번 탭")
//                }.onPageAppear {
//                    tweetsModel.isLoading = true
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                        tweetsModel.isLoading = false
//                    }
//                }
//                PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
//                .pagerTabItem {
//                    TwitterNavBarItem(title: "4번 탭")
//                }.onPageAppear {
//                    tweetsModel.isLoading = true
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                        tweetsModel.isLoading = false
//                    }
//                }
//                PostsList(isLoading: $tweetsModel.isLoading, items: tweetsModel.posts)
//                .pagerTabItem {
//                    TwitterNavBarItem(title: "5번 탭")
//                }.onPageAppear {
//                    tweetsModel.isLoading = true
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                        tweetsModel.isLoading = false
//                    }
//                }
//            }
//            .frame(alignment: .center)
//            .pagerTabStripViewStyle(
//                .normal(indicatorBarColor: Color.init(#colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.9215686275, alpha: 1)), tabItemSpacing: 0, tabItemHeight: 50))
//        }
    }
}

