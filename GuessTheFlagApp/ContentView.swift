//
//  ContentView.swift
//  GuessTheFlagApp
//
//  Created by Josileudo on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("My first text")
            Text("My subtitle text")
            
            Spacer()
            
            HStack() {
                Text("Horizontal text")
                Text("Text 2")
            }
            
            Spacer()
            
            ZStack() {
                Text("Testing")
                Text("Hello word")
            }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
