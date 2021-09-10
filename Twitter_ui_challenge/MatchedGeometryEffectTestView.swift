//
//  MatchedGeometryEffectTestView.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/10.
//

import Foundation
import SwiftUI

struct MatchedGeometryEffectTestView: View {
    
    @State fileprivate var isClicked : Bool = false
    
    var offsetHeight : (Bool) -> CGFloat = { isClicked in
        return isClicked ? UIScreen.main.bounds.height * 0.7 : 0
    }
    
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 150, height: 150)
                .overlay(Text("오늘도 빡코딩!").foregroundColor(.white))
                .offset(y: offsetHeight(isClicked))
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .onTapGesture {
            withAnimation(.easeInOut){
                isClicked.toggle()
            }
        }
    }
}

struct MatchedGeometryEffectTestView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectTestView()
    }
}
