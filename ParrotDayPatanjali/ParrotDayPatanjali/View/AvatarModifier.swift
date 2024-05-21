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
        content
            .background(backgroundColor)
            .frame(width: 298, height: 298)
            .clipShape(Circle())
    }
}

extension View {
    func avatar(backgroundColor: Color) -> some View {
        modifier(AvatarModifier(backgroundColor: backgroundColor))
    }
}
