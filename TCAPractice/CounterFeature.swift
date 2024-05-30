//
//  Counter.swift
//  TCAPractice
//
//  Created by JinwooLee on 5/30/24.
//

import Foundation
import ComposableArchitecture

@Reducer
struct Counter {
    
    @ObservableState
    struct State {
        var count = 0
    }
    
    enum Action : Equatable {
        case increaseButtonTapped
        case decreaseButtonTapped
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .increaseButtonTapped:
            state.count += 1
            return .none
        case .decreaseButtonTapped:
            state.count -= 1
            return .none
        }
    }
}
