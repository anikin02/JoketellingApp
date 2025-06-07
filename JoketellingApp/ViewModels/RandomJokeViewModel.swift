//
//  RandomJokeViewModel.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

import SwiftUI

class RandomJokeViewModel: ObservableObject {
  @Published var joke: Joke?
  
  init() {
    setNewJoke()
  }
  
  func setNewJoke() {
    
    joke = nil
    
    APIManager.shared.getRandomJoke(type: "programming") { response in
      DispatchQueue.main.async {
        self.joke = response.first
      }
    }
  }
}
