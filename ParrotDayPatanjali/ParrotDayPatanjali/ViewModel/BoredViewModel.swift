//
//  BoredViewModel.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import Foundation

protocol BoredViewModelProtocol {
    func suggest() async throws -> Bored
}

class BoredViewModel: BoredViewModelProtocol, ObservableObject {
    
    @Published var bored: Bored = Bored()
    private let useCase: BoredUseCaseProtocol
    
    init(useCase: BoredUseCaseProtocol = BoredUseCase()) {
        self.useCase = useCase
    }
    
    func suggest() async throws -> Bored {
        bored = try await useCase.suggest()
        return bored
    }
}
