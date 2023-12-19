//
//  ContentView.swift
//  GuessTheFlagApp
//
//  Created by Josileudo on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hi my frind")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.white)
            .bold()
            .background(.purple.gradient)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
