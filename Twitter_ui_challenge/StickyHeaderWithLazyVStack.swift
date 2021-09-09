//
//  StickyHeaderWithLazyVStack.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import Foundation
import SwiftUI

struct StickyHeaderWithLazyVStack: View {
    var body: some View{
        StickyHeaderView {
            ColorSelectionView()
        }
    }
}
