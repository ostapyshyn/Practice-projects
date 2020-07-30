//
//  ContentView.swift
//  FlagsSUI
//
//  Created by Volodymyr Ostapyshyn on 30.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["UK", "USA", "Bangladesh", "Germany", "Argentina", "Brazil", "Canada", "Greece", "Russia", "Sweden" ].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    func askQuestion() {
        countries.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct Answer"
            score += 1
        } else {
            scoreTitle = "Wrong! Correct Answer - \(countries[number])"
            score -= 1
        }
        
    }
    
    var body: some View {
        
        
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Вибери прапор: ")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    
                    
                    
                }
                
                ForEach(0..<3) {number in
                    Button(action: {
                        self.flagTapped(number)
                        self.showingScore = true
                    }) {
                        Image(self.countries[number]).renderingMode(.original)
                        .frame(width: 250, height: 125)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                        
                        
                    }
                    
                }
                Text("Total score \(score)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                Spacer()
                
                
                
                
                
                
                
            }.alert(isPresented: $showingScore) {
                Alert(title: Text(scoreTitle), message: Text("Total score \(score)"),  dismissButton: .default(Text("OK")){
                    self.askQuestion()
                    })
            }

            
            
        }
            
        
    }
        
}



    











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
