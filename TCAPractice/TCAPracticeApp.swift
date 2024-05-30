//
//  TCAPracticeApp.swift
//  TCAPractice
//
//  Created by JinwooLee on 5/29/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCAPracticeApp: App {
    
    static let store = Store(initialState: CounterFeature.State()) {
      CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCAPracticeApp.store)
        }
    }
}
