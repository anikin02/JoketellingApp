//
//  RandomJokeItemView.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

import SwiftUI

struct RandomJokeItem: View {
  let joke: Joke?
  var body: some View {
    VStack{
      if let joke = joke {
        Text(joke.setup)
        Text(joke.punchline)
      } else {
        ProgressView()
          .scaleEffect(2)
      }
    }
    .font(.system(size: 20, weight: .medium, design: .default))
    .multilineTextAlignment(.center)
  }
}
