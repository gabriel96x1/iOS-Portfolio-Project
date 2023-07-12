//
//  GamesListScreenSwiftUI.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import SwiftUI

struct GamesListScreenSwiftUI: View {
    
    @State var brews: [BrewModel] = [];

    var body: some View {
        let network = Network();
        
        ScrollView {
            LazyVStack {
                Text("SwiftUI Screen!")
                Divider()
                if !brews.isEmpty {
                    ForEach(brews) { brew in
                        BrewItem(brew: brew)
                    }
                } else {
                    ProgressView()
                }
            }.onAppear {
                network.requestBrews {
                    (brews) in self.brews = brews
                }

            }
        }
        
    }
}
