//
//  ContentView.swift
//  Convert It!
//
//  Created by Liam Doran on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue: Double = 0.0
    @State private var inputUnit: String = "C"
    @State private var outputUnit: String = "C"
    
    @FocusState private var amountIsFocused: Bool
    
    let conversionValues = ["C", "F", "K"]
    
    var outputValue: Double {
        var convertedToC: Double {
            if inputUnit == "C" {
                return inputValue
            } else if inputUnit == "F" {
                return (inputValue - 32) / 1.8
            } else {
                return inputValue - 273.15
            }
        }
        
        var finalConversion: Double {
            if outputUnit == "C" {
                return convertedToC
            } else if outputUnit == "F" {
                return (convertedToC * 1.8) + 32
            } else {
                return convertedToC + 273.15
            }
        }
        
        return finalConversion
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("input value units", selection: $inputUnit) {
                        ForEach(conversionValues, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("input value units")
                }
                
                Section {
                    TextField("Input value", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                } header: {
                    Text("input value")
                }
                
                Section {
                    Picker("output value units", selection: $outputUnit) {
                        ForEach(conversionValues, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("output value units")
                }
                
                Section {
                    Text(outputValue, format: .number)
                }
            }
            .navigationTitle("Convert It!")
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
    }
}
