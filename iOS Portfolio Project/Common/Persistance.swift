//
//  PersistanceController.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 12/07/23.
//

import Foundation
import CoreData

class Persistance: NSObject, ObservableObject {
    
    @Published var notes: [Note] = [Note]()

    let container: NSPersistentContainer = NSPersistentContainer(name: "db")
    
    override init() {
        super.init()
        container.loadPersistentStores { _, _ in }
    }
}
