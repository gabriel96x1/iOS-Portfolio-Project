//
//  ContentView.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                NavigationLink(destination: GamesListScreenSwiftUI()) {
                    Text("Swift UI portfolio")
                        .padding(8)
                }
                NavigationLink(destination: GamesListViewController()) {
                    Text("UiKit portfolio")
                        .padding(8)
                }

            }
            .padding()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
