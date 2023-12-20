//
//  ContentView.swift
//  GuessTheFlagApp
//
//  Created by Josileudo on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        MARK: About Buttons style
        
        VStack {
            Button("Button 1", action: clickMe)
                .buttonStyle(.bordered)
            
            Button("Button 2", role: .destructive, action: clickMe)
                .buttonStyle(.borderedProminent)
            
            Button("Button 3", action: clickMe)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            
            Button("Button 4", action: clickMe)
                .buttonStyle(.plain)
            
            Button {
               print("clicked")
            } label: {
                Label("Click", systemImage: "pencil")
                    .padding()
                    .foregroundColor(.white)
                    .background(.purple)
            }
        }
        
    }
    
    func clickMe() {
        print("Hello word")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
