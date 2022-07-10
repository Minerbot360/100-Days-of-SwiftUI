//
//  ContentView.swift
//  WordScramble
//
//  Created by Liam Doran on 7/9/22.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    let input = "a b c"
    let letters = input.components(separatedBy: " ")

    var body: some View {
        Text(letters)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
