//
//  ContentView.swift
//  BetterRest
//
//  Created by Liam Doran on 7/7/22.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var components = DateComponents()
    components.hour = 8
    components.minute = 0
    let date = Calendar.current.date(from: components) ?? Date.now
    
    var body: some View {
        VStack {
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                .labelsHidden()
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4 ... 12, step: 0.25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
