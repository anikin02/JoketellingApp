//
//  APIManager.swift
//  JoketellingApp
//
//  Created by Данил Аникин on 08.06.2025.
//

import Foundation

class APIManager {
  static let shared = APIManager()
  
  func getRandomJoke(type: String, completion: @escaping ([Joke]) -> Void) {
    let urlString = "https://official-joke-api.appspot.com/jokes/\(type)/random"
    guard let url = URL(string: urlString) else { return }
    
    let session = URLSession(configuration: .default)
    let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
      if error != nil {
        print(error!.localizedDescription)
      } else if let data = data {
        do {
          let decoder = JSONDecoder()
          let response = try decoder.decode([Joke].self, from: data)
          completion(response)
        } catch {
          print(error.localizedDescription)
        }
      }
    })
    task.resume()
  }
}
