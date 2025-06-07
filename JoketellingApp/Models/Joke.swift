//
//  Joke.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

struct Joke: Decodable {
  let setup: String
  let punchline: String
  let type: JokeType
}

enum JokeType: String, Decodable {
  case general = "general"
  case dad = "dad"
  case programming = "programming"
  case knockKnock = "knock-knock"
}
