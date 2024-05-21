//
//  AvatarModifier.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import Foundation
import SwiftUI

struct AvatarModifier: ViewModifier {
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        Circle()
            .fill(backgroundColor)
            .frame(width: 198, height: 198)
            .overlay(
              content
                .foregroundColor(.white)
            )
    }
}

extension View {
    func avatar(backgroundColor: Color) -> some View {
        modifier(AvatarModifier(backgroundColor: backgroundColor))
    }
}
