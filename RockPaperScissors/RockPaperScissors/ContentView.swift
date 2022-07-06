//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Liam Doran on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    @State var shouldWin = Bool.random()
    @State var computerChoice = Int.random(in: 0 ... 2)
    
    var winOrLoose: String {
        if shouldWin == true {
            return "win"
        } else {
            return "loose"
        }
    }
    
    @State var userMove = "rock"
    
    @State var showingScore = false
    @State var score = 0
    @State var alertTitle = "good job!"
    
    let moves = ["rock", "paper", "scissors"]
    
    var body: some View {
        ZStack {
            Color(red: 0.1, green: 0.2, blue: 0.45)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Rock, Paper, Scissors")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
                VStack(spacing: 20) {
                    Text("The computer chose \(moves[computerChoice])")
                        .font(.largeTitle.weight(.semibold))
                    Text("You should \(winOrLoose)")
                        .font(.largeTitle.weight(.semibold))
                    HStack {
                        Button {
                            userMove = "rock"
                            selectedAThing()
                        } label: {
                            Text("🪨")
                                .font(.system(size: 100))
                        }
                        
                        Button {
                            userMove = "paper"
                            selectedAThing()
                        } label: {
                            Text("📑")
                                .font(.system(size: 100))
                        }
                        
                        Button {
                            userMove = "scissors"
                            selectedAThing()
                        } label: {
                            Text("✂️")
                                .font(.system(size: 100))
                        }
                    }
                }
                .padding(20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("Score: \(score)")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
                Button {
                    resetGame()
                } label: {
                    Text("Reset game")
                        .font(.largeTitle.weight(.semibold))
                        .foregroundColor(.black)
                        .padding(20)
                        .background(.regularMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
        }
        .alert(alertTitle, isPresented: $showingScore) {
            Button("Continue", action: newRPS)
        } message: {
            Text("Your score is \(score)")
        }
    }
    func selectedAThing() {
        if shouldWin == true {
            if computerChoice == 0 && userMove == "paper" {
                score += 1
                alertTitle = "nice"
            } else if computerChoice == 1 && userMove == "scissors" {
                score += 1
                alertTitle = "nice"
            } else if computerChoice == 2 && userMove == "rock" {
                score += 1
                alertTitle = "nice"
            } else {
                alertTitle = "bad move!"
            }
        } else if shouldWin == false {
            if computerChoice == 0 && (userMove == "scissors" || userMove == "rock") {
                score += 1
                alertTitle = "nice"
            } else if computerChoice == 1 && (userMove == "rock" || userMove == "paper") {
                score += 1
                alertTitle = "nice"
            } else if computerChoice == 2 && (userMove == "paper" || userMove == "scissors") {
                score += 1
                alertTitle = "nice"
            } else {
                alertTitle = "bad move!"
            }
        }
        showingScore = true
    }
    
    func newRPS() {
        shouldWin = Bool.random()
        computerChoice = Int.random(in: 0 ... 2)
    }
    
    func resetGame() {
        score = 0
        newRPS()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
