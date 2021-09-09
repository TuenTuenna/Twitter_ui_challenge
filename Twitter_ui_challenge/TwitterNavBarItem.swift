//
//  TwitterNav.swift
//  Example (iOS)
//
//  Copyright © 2021 Xmartlabs SRL. All rights reserved.
//

import SwiftUI
import PagerTabStripView

private class ButtonTheme: ObservableObject {
    @Published var textColor = Color.gray
    @Published var backgroundColor = Color.gray
}

struct TwitterNavBarItem: View, PagerTabViewDelegate {
    let title: String
    
    @ObservedObject fileprivate var theme = ButtonTheme()
    
    var body: some View {
        VStack {
            Spacer()
            Text(title)
                .foregroundColor(theme.textColor)
                .font(.system(size: 16))
                .fontWeight(.bold)
                .offset(y: 5)
            Spacer().frame(height: 12)
            Rectangle()
                .foregroundColor(Color.init(#colorLiteral(red: 0.4078431373, green: 0.462745098, blue: 0.5176470588, alpha: 1)))
                .frame(height: 1)
                .offset(y: 1)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
    
//    func setState(state: PagerTabViewState) {
//        switch state {
//        case .selected:
//            self.theme.textColor = .blue
//        default:
//            self.theme.textColor = .gray
//        }
//    }
    
    func setState(state: PagerTabViewState) {
        switch state {
        case .selected:
            self.theme.textColor = Color.init(#colorLiteral(red: 0.2980392157, green: 0.6196078431, blue: 0.9215686275, alpha: 1))
//            self.theme.backgroundColor = .yellow
//        case .highlighted:
//            self.theme.textColor = .pink
        default:
            self.theme.textColor = Color.init(#colorLiteral(red: 0.4078431373, green: 0.462745098, blue: 0.5176470588, alpha: 1))
            self.theme.backgroundColor = .white
        }
    }
    
}

struct TwitterNavBarItem_Previews: PreviewProvider {
    static var previews: some View {
        TwitterNavBarItem(title: "Tweets")
    }
}
