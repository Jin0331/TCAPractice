//
//  CounterView.swift
//  TCAPractice
//
//  Created by JinwooLee on 5/30/24.
//

import SwiftUI
import ComposableArchitecture

struct CounterView: View {
    
    let store : StoreOf<CounterFeature>
        
    var body: some View {
      VStack {
          Text("\(store.count)")
          .font(.largeTitle)
          .padding()
          .background(Color.black.opacity(0.1))
          .cornerRadius(10)
        HStack {
          Button("-") {
              store.send(.decrementButtonTapped)
          }
          .font(.largeTitle)
          .padding()
          .background(Color.black.opacity(0.1))
          .cornerRadius(10)
          
          Button("+") {
              store.send(.incrementButtonTapped)
          }
          .font(.largeTitle)
          .padding()
          .background(Color.black.opacity(0.1))
          .cornerRadius(10)
        }
      }
    }
}

#Preview {
  CounterView(
    store: Store(initialState: CounterFeature.State()) {
      CounterFeature()
    }
  )
}
