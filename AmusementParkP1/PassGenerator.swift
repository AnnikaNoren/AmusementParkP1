//
//  PassGenerator.swift
//  AmusementParkP1
//
//  Created by Annika Noren on 4/8/17.
//  Copyright © 2017 Annika Noren. All rights reserved.
//

import Foundation


class PassGenerator {


    func createPass(for entrant: EntrantImplementation){
        print("This entrant is a \(entrant.entrantType)")
        print("Areas of access: \(entrant.areaAccess())")
        print("Ride access: \(entrant.rideAccess())")
        print("Discounts (%): \(entrant.fooddiscountAccess())")
        do {
            try entrant.verifyEntrant()
            print("Information for Entrant is valid")
        } catch {
            print(error)
        }
        print("The entrant's personal info is: \(entrant.personalInfo)")

    }
    
}
