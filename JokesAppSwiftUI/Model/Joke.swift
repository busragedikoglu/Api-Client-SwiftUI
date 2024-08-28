//
//  Joke.swift
//  JokesAppSwiftUI
//
//  Created by Büşra Gedikoğlu on 26.08.2024.
//

import Foundation

struct Joke: Identifiable,Codable{
    let id: Int
    let type: String
    let setup: String
    let punchline: String
}
