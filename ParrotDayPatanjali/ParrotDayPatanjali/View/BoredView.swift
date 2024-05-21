//
//  BoredView.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import SwiftUI

struct BoredView: View {
    
    @EnvironmentObject var isAViewModel: BoredViewModel
    
    var body: some View {
        VStack {
            Button("Recommend me something 4 today") {
                Task {
                    let bored = try await isAViewModel.suggest()
                }
            }
            .avatar(backgroundColor: .purple)
            Text(isAViewModel.bored.activity!)
            .avatar(backgroundColor: .cyan)
        }
    }
}

#Preview {
    BoredView()
}
