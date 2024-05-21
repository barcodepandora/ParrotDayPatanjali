//
//  BoredUseCase.swift
//  ParrotDayPatanjali
//
//  Created by Juan Manuel Moreno on 21/05/24.
//

import Foundation

protocol BoredUseCaseProtocol {
    func suggest() async throws -> Bored
}

class BoredUseCase: BoredUseCaseProtocol {
    func suggest() async throws -> Bored {
        let (data, _) = try await URLSession.shared.data(for: APIRouter.getData.urlRequest)
        let decoder = JSONDecoder()
        let bored = try decoder.decode(Bored.self, from: data)
        return bored
    }
}
