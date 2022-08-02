//
//  ContentView.swift
//  TimesTables
//
//  Created by Liam Doran on 7/31/22.
//

import SwiftUI

struct Question {
    var firstNumber: Int
    var secondNumber: Int
    var answer: Int
    
    func createTitle() -> String {
        return("What is \(firstNumber) x \(secondNumber)")
    }
}

struct ContentView: View {
    let numbersOfQuestions = [5, 10, 20]
    
    @State private var numberOfQuestions = 10
    @State private var highestTable = 12
    
    var questionAndAnswer: Question
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Stepper("Up to \(highestTable) x \(highestTable)", value: $highestTable, in: 2 ... 12, step: 1)
                } header: {
                    Text("What is the highest table you want to test?")
                }
                
                Section {
                    Picker("Number of questions", selection: $numberOfQuestions) {
                        ForEach(numbersOfQuestions, id: \.self) {
                            Text($0, format: .number)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("✨Times Tables✨")
        }
    }
    mutating func generateQuestion() {
        questionAndAnswer.firstNumber = Int.random(in: 1 ... highestTable)
        questionAndAnswer.secondNumber = Int.random(in: 1 ... highestTable)
        questionAndAnswer.answer = questionAndAnswer.firstNumber * questionAndAnswer.secondNumber
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
