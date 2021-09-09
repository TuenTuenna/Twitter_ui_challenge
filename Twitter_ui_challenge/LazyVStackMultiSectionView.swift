//
//  LazyVStackMultiSectionView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import Foundation
import SwiftUI

struct LazyVStackMultiSectionView: View {
    
    let sections = [
        ColorData(color: .red, name: "Reds"),
        ColorData(color: .green, name: "Greens"),
        ColorData(color: .blue, name: "Blues"),
        ColorData(color: .gray, name: "Grays"),
        ColorData(color: .orange, name: "Oranges"),
        ColorData(color: .pink, name: "Pinks"),
        ColorData(color: .purple, name: "Purples"),
        ColorData(color: .black, name: "Blacks")
    ]

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders]) {
                ForEach(sections) { section in
                    Section(header: SectionHeaderView(colorData: section)) {
                        ForEach(section.variations) { variation in
                            section.color
                                .brightness(variation.brightness)
                                .frame(height: 100)
                        }
                    }
                }
            }
        }
    }
}

