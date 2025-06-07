//
//  RandomJokeViewModel.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

import SwiftUI

class RandomJokeViewModel: ObservableObject {
  @Published var joke: Joke
  
  init() {
    joke = .init(setup: "Why did the programmer go to art school?", punchline: "He wanted to learn how to code outside the box.", type: "programming")
  }
  
  func setNewJoke() {
    APIManager.shared.getRandomJoke(type: "programming") { response in
      DispatchQueue.main.async {
        self.joke = response.first ?? self.joke
      }
    }
  }
}
