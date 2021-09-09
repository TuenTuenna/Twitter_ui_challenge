//
//  StickyHeaderTestView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import Foundation
import SwiftUI
import URLImage


//struct StickyHeader<Content: View>: View {
//
//    var minHeight: CGFloat
//    var content: Content
//
//    init(minHeight: CGFloat = 200, @ViewBuilder content: () -> Content) {
//        self.minHeight = minHeight
//        self.content = content()
//    }
//
//    var body: some View {
//        GeometryReader { geo in
//            if(geo.frame(in: .global).minY <= 0) {
//                content
//                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//            } else {
//                content
//                    .offset(y: -geo.frame(in: .global).minY)
//                    .frame(width: geo.size.width, height: geo.size.height + geo.frame(in: .global).minY)
//            }
//        }.frame(minHeight: minHeight)
//    }
//}



struct StickyHeaderView<Content: View>: View {
    
    var content: Content
    
    let url = URL(string: "https://images.unsplash.com/photo-1630922786210-88226f58261b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80")!
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StickyHeader {
                ZStack {
                    Color(red: 35/255, green: 45/255, blue: 50/255)
//                    URLImage(url) { image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .overlay(Color.black.opacity(0.3))
                    
                    VStack {
                        Text("Joshua Tree")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("California")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                }
            }
            
            // Scroll View Content Here
            // ...
            content
        }
    }
}
