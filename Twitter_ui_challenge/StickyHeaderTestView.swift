//
//  StickyHeaderTestView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import Foundation
import SwiftUI
import URLImage

struct StickyHeaderTestView: View {
    
    let url = URL(string: "https://images.unsplash.com/photo-1630922786210-88226f58261b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80")!
    
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
                    .overlay(Color.black.opacity(0.3))
                    
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
        }
    }
}
