//
//  BrewItem.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import SwiftUI

struct BrewItem: View {
    var brew: BrewModel
    
    var body: some View {
        VStack(alignment: .center) {
            Text(brew.name)
            Text(brew.city)
            Text(brew.country ?? "")
            Text(brew.url ?? "")
            Divider()
        }.frame(maxWidth: .infinity)
            .onTapGesture {
                print("Clicked")
            }
    }
}
