//
//  SleepDataView.swift
//  Lucidity
//
//  Created by Jomills Jose Anand on 2022-02-20.
//

import SwiftUI
import HealthKit

struct SleepDataView: View {
    
    private var sleepDataStore: SleepDataStore?
    
    init() {
        sleepDataStore = SleepDataStore()
    }
    
    var body: some View {
        Text("Hello world!").padding()
    }
}

struct SleepDataView_Previews: PreviewProvider {
    static var previews: some View {
        SleepDataView()
    }
}
