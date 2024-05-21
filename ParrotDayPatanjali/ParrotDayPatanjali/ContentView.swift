//
//  ContentView.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Go") {
                Task {
                    try await print(BoredUseCase().suggest())
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
