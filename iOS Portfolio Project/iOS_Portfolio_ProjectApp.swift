//
//  iOS_Portfolio_ProjectApp.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import SwiftUI

@main
struct iOS_Portfolio_ProjectApp: App {
    
    @StateObject private var persistance: Persistance = Persistance()
    
    var body: some Scene {

        WindowGroup {
            ContentView()
                .environmentObject(persistance)
                .environment(\.managedObjectContext, persistance.container.viewContext)
        }
    }
}
