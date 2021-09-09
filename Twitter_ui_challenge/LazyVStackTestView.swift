//
//  LazyVStackTestView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/09.
//

import Foundation
import SwiftUI

struct ColorData: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let variations: [ShadeData]

    struct ShadeData: Identifiable {
        let id = UUID()
        var brightness: Double
    }

    init(color: Color, name: String) {
        self.name = name
        self.color = color
        self.variations = stride(from: 0.0, to: 0.5, by: 0.01)
            .map { ShadeData(brightness: $0) }
    }
}

struct ColorSelectionView: View {
    let sections = [
        ColorData(color: .red, name: "Reds"),
//        ColorData(color: .green, name: "Greens"),
//        ColorData(color: .blue, name: "Blues"),
//        ColorData(color: .gray, name: "Grays"),
//        ColorData(color: .orange, name: "Oranges"),
//        ColorData(color: .pink, name: "Pinks"),
//        ColorData(color: .purple, name: "Purples"),
//        ColorData(color: .black, name: "Blacks")
    ]

    var body: some View {
//        ScrollView {
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
//        }
    }
}

struct SectionHeaderView: View {
    var colorData: ColorData

    var body: some View {
        HStack {
            Text(colorData.name + "섹션헤더 입니다!")
                .font(.headline)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
//        .background(Color.primary
//                        .colorInvert()
//                        .opacity(0.75))
        .background(Color.gray)
    }
}
