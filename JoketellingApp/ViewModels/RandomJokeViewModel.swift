//
//  RandomJokeViewModel.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

import SwiftUI

class RandomJokeViewModel: ObservableObject {
  @Published var joke: Joke?
  @Published var type: JokeType = .general
  
  init() {
    setNewJoke()
  }
  
  func setNewJoke() {
    joke = nil
    
    APIManager.shared.getRandomJoke(type: type.rawValue) { response in
      DispatchQueue.main.async {
        self.joke = response.first
      }
    }
  }
  
  func changeType(type: JokeType) {
    self.type = type
  }
}
