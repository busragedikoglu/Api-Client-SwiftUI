//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Büşra Gedikoğlu on 27.08.2024.
//

import Alamofire
import Foundation

class JokesViewModel: ObservableObject {
    @Published var jokes = [Joke]()

    init() {
        getJokes()
    }

    func getJokes() {
        AF.request("https://official-joke-api.appspot.com/random_ten", method: .get).responseDecodable(of: [Joke].self) { response in

            switch response.result {
            case let .success(data):
                self.jokes += data
            case let .failure(error):
                print(error)
            }
        }
    }
}
