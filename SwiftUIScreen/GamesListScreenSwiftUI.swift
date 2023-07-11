//
//  GamesListScreenSwiftUI.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import SwiftUI

struct GamesListScreenSwiftUI: View {
    @State var brews: [BrewModel] = []

    var body: some View {
        
        VStack {
            Text("SwiftUI Screen!")
                .onAppear {
                    requestBrews {
                        (brews) in self.brews = brews
                    }
                }
            if !brews.isEmpty {
                List(brews) { brew in
                    BrewItem(brew: brew)
                }
            }
        }
        
    }
}


func requestBrews(completion:@escaping ([BrewModel]) -> ()) {
    guard let url = URL(string: "https://api.openbrewerydb.org/v1/breweries?per_page=10"
    ) else {
        return
        
    }

    let task = URLSession.shared.dataTask(with: url) {
        data, response, error in
        
        let decoder = JSONDecoder()

        if let data = data{
            do {
                let brews = try decoder.decode([BrewModel].self, from: data)
                DispatchQueue.main.async {
                                completion(brews)
                            }
            } catch {
                print(error)
            }
        }
    }
    task.resume()
}
