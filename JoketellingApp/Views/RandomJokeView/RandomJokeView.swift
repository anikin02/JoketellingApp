//
//  RandomJokeView.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

import SwiftUI

struct RandomJokeView: View {
  
  @ObservedObject var viewModel: RandomJokeViewModel = .init()
  
  var body: some View {
    VStack {
      HStack{
        Text("Random joke")
          .font(.system(size: 32, weight: .black, design: .default))
      }
      
      // Types here
      
      Spacer()
      
      RandomJokeItem(joke: viewModel.joke)
      
      Spacer()
      
      Button {
        viewModel.setNewJoke()
      } label: {
        Text("New random joke")
          .font(.system(size: 24, weight: .bold, design: .default))
          .padding(12)
          .frame(maxWidth: .infinity)
          .background(.black)
          .clipShape(.capsule)
      }
      
      
    }
    .padding(.horizontal)
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
  }
}

