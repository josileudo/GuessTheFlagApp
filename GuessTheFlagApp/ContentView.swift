//
//  ContentView.swift
//  GuessTheFlagApp
//
//  Created by Josileudo on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Button("Button 1", action: clickMe)
                .buttonStyle(.bordered)
                
        }
        .alert("Hello peoples", isPresented: $showAlert) {
            Button("Close", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Your phone has low getter")
        }
    }
    
    func clickMe() {
        print("Hello word")
        showAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
