//
//  LucidityApp.swift
//  Lucidity
//
//  Created by Jomills Jose Anand on 2022-02-12.
//

import SwiftUI

@main
struct LucidityApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
