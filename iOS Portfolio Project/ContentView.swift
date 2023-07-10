//
//  ContentView.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Swift UI portfolio") {
                
            }
                .padding(8)
            Button("UiKit portfolio") {
                
            }
                .padding(8)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
