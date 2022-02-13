//
//  ContentView.swift
//  Lucidity
//
//  Created by Jomills Jose Anand on 2022-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var details: String = ""
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Dream.entity(), sortDescriptors: [NSSortDescriptor(key: "dreamDate", ascending: false)]) private var allDreams: FetchedResults<Dream>
    
    private func logDream() {
        
        do {
            let lucidDream = Dream(context: viewContext)
            lucidDream.dream = details
            lucidDream.dreamDate = Date()
            try viewContext.save()
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("I dreamed about...", text: $details)
                    .textFieldStyle(.roundedBorder)
                
                Button("Log Dream") {
                    logDream()
                } .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                
                Spacer()
            }
            
            
            .padding()
            
            .navigationTitle("Dream Diary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
