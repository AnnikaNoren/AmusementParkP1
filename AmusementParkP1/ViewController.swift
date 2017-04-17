//
//  ViewController.swift
//  AmusementParkP1
//
//  Created by Annika Noren on 4/3/17.
//  Copyright © 2017 Annika Noren. All rights reserved.
//

import UIKit


var parkEntrant: EntrantImplementation?

class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let passGenerator = PassGenerator()
        
        //test cases
        //
        //parkEntrant = ClassicGuest()
        //parkEntrant = VIPGuest()
        //parkEntrant = FreeChildGuest(dob: "2017-1-1")
        //parkEntrant = FreeChildGuest(dob: "2000-1-1")
        
        //let personalInfo = PersonalInfo(firstName: "Jane", lastName: "Manager", streetAddress: "1 Main Street", city: "Anytown", state: "MA", zip: "00000", dob:"00000")
        //parkEntrant = Manager(personalInfo: personalInfo)
        
        //let personalInfo = PersonalInfo(firstName: "Jane", lastName: "Maintenance", streetAddress:"2 Main Street", city: "Anytown", state: "MA", zip: "00000", dob:"00000")
        //parkEntrant = HourlyEmployeeMaintenance(personalInfo: personalInfo)
        
        //let personalInfo = PersonalInfo(firstName: "Jane", lastName: "Food", streetAddress:"3 Main Street", city: "Anytown", state: "MA", zip: "00000", dob:"00000")
        //parkEntrant = HourlyEmployeeMaintenance(personalInfo: personalInfo)
        
        let personalInfo = PersonalInfo(firstName: "Jane", lastName: "Ride", streetAddress:"4 Main Street", city: "Anytown", state: "MA", zip: "00000", dob:"00000")
        parkEntrant = HourlyEmployeeMaintenance(personalInfo: personalInfo)

        
        if parkEntrant != nil {
            passGenerator.createPass(for: parkEntrant!)
        } else {
            parkEntrant = nil
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

