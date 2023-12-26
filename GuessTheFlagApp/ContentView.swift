//
//  ContentView.swift
//  GuessTheFlagApp
//
//  Created by Josileudo on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Spain", "Uk", "Ukraine", "US"]
    @State private var correctAnswers = Int.random(in: 0...2)
    
    @State private var showAlert: Bool = false
    @State private var textResponse: String = ""
    @State private var score: Int = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.5, green: 0.3, blue: 0.8), location: 0.3),
                .init(color: Color(red: 0.9, green: 0.15, blue: 0.16), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                HStack(alignment: .top) {
                    Text("Score: ")
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.bold))
                    
                    Text("\(score)")
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.bold))
                }
                
                Spacer()
                
                VStack(spacing: 30) {
    
                    VStack() {
                        Text("Tap your Flag: ")
                            .foregroundColor(.white)
                            .font(.subheadline.weight(.semibold))
    
                        Text(countries[correctAnswers])
                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.bold))
    
                    }
    
                    ForEach(0..<3) { index in
                        Button{
                            tappedFlag(index)
                        } label: {
                            Image(countries[index])
                                .cornerRadius(90)
                                .shadow(radius: 5)
                        }
                    }
    
                }
                .alert(textResponse, isPresented: $showAlert) {
                    Button("Continue", action: {
                        randomValues()
                    })
                } message: {
                     Text("Your score is ?? ")
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(Rectangle())
                .cornerRadius(20)
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
    
    func tappedFlag(_ number: Int) {
        if number == correctAnswers {
            textResponse = "Correct ✅"
            score += 1
        } else {
            textResponse = "Wrong ❌"
        }
        
        showAlert = true
    }
    
    func randomValues() {
        countries = countries.shuffled()
        correctAnswers = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
