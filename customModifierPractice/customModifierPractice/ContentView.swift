//
//  ContentView.swift
//  customModifierPractice
//
//  Created by Liam Doran on 7/4/22.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.largeTitle.weight(.bold))
            .foregroundColor(.blue)
        
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .modifier(Title())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
