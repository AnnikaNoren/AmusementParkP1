//
//  PassGenerator.swift
//  AmusementParkP1
//
//  Created by Annika Noren on 4/8/17.
//  Copyright © 2017 Annika Noren. All rights reserved.
//

import Foundation

    //let parkEntrant: TypeOfEntrant

class PassGenerator {

    /*func createPass(for a: EntrantImplementation) {
        //let parkEntrant = ClassicGuest()
        swipe(entrant: parkEntrant!)
        
        
        //swipe(entrant: ClassicGuest())
    }
    
    func swipe(entrant: EntrantImplementation) {
        print("This entrant is a \(entrant.entrantType)")
        print(entrant.areaAccess())
        print(entrant.rideAccess())
        print(entrant.fooddiscountAccess())
    }*/
    
    func createPass(for entrant: EntrantImplementation){
        print("This entrant is a \(entrant.entrantType)")
        print("Areas of access: \(entrant.areaAccess())")
        print("Ride access: \(entrant.rideAccess())")
        print("Discounts: \(entrant.fooddiscountAccess())")
        print("Younger than 5 years? \(entrant.calculateAge())")
    }
    
}
