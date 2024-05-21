//
//  ParrotDayPatanjaliApp.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import SwiftUI

@main
struct ParrotDayPatanjaliApp: App {
    
    @StateObject private var isAViewModel = BoredViewModel()
    
    var body: some Scene {
        WindowGroup {
            BoredView().environmentObject(isAViewModel)
        }
    }
}
