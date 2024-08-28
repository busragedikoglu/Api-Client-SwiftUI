//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Büşra Gedikoğlu on 26.08.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()

    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.setup)
            }.toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            .navigationBarTitle(Text("Jokes App"))
        }
    }

    func addJoke() {
        jokesVM.getJokes()
    }
}

#Preview {
    ContentView()
}
