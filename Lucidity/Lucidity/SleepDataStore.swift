//
//  SleepDataStore.swift
//  Lucidity
//
//  Created by Jomills Jose Anand on 2022-02-20.
//

import Foundation
import HealthKit

class SleepDataStore {
    
    var sleepDataStore: HKHealthStore?
    
    init () {
        
        if HKHealthStore.isHealthDataAvailable() {
            sleepDataStore = HKHealthStore()
        }
    }
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        
        let sleepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        
        guard let sleepDataStore = sleepDataStore else {
            return completion(false)
        }

        sleepDataStore.requestAuthorization(toShare: [], read: [sleepType]) {
            (success, error) in
            completion(success)
        }
    }
}
