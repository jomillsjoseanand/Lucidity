//
//  CoreDataManager.swift
//  Lucidity
//
//  Created by Jomills Jose Anand on 2022-02-12.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "DreamJournalModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Corde Data \(error)")
            }
        }
        
    }
}
