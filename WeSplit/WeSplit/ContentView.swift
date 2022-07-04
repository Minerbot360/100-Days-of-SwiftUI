//
//  ContentView.swift
//  WeSplit
//
//  Created by Liam Doran on 6/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 1
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [0, 5, 10, 15, 20, 25]
    
    var totalPerPecrson: Double {
        let peopleCount = Double(numberOfPeople + 1)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = tipValue + checkAmount
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        
        return tipValue + checkAmount
    }
    
    var useRedText: Bool {
        if tipPercentage == 0 {
            return true
        } else {
            return false
        }
    }
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(1 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
            
                Section {
                    Text(totalPerPecrson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .foregroundColor(useRedText ? .red : .black)
                } header: {
                    Text("Amount per person")
                }
                
                Section {
                    Text(grandTotal, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Unsplit amount")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
