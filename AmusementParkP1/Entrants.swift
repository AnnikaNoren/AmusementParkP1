//
//  Enum.swift
//  AmusementParkP1
//
//  Created by Annika Noren on 4/3/17.
//  Copyright © 2017 Annika Noren. All rights reserved.
//

import Foundation

typealias Percent = Int

enum TypeOfEntrant {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case hourlyEmployeeFood
    case hourlyEmployeeRide
    case hourlyEmployeeMaintenence
    case manager
}

protocol EntrantImplementation {
    var entrantType: TypeOfEntrant { get }
    var personalInfo: PersonalInfo? { get }
    //var dob: Birthday? { get }
    
    func areaAccess() -> AreaAccess
    func rideAccess() -> RideAccess
    func fooddiscountAccess() -> FoodAndMerchDiscount
    func calculateAge() -> Bool
}

/*protocol Birthday {
    var strDOB: String { get }
    
    func calculateAge() -> Bool
}*/


//protocol DailyGuest: EntrantType {}
//protocol Employee: EntrantType {}

struct AreaAccess {
    var amusement: Bool
    var kitchenArea: Bool
    var rideControlArea: Bool
    var maintenanceArea: Bool
    var officeArea: Bool
}

struct RideAccess {
    var allRides: Bool
    var skipLine: Bool
}

struct FoodAndMerchDiscount {
    var foodDiscount: Percent
    var merchDiscount: Percent
}

struct PersonalInfo {
    let firstName: String
    let lastName: String
    let city: String
    let state: String
    let zip: Int
}

/*struct Birthday {
    var dob: Bool
}*/

struct ClassicGuest: EntrantImplementation {
    var entrantType = TypeOfEntrant.classicGuest
    var personalInfo: PersonalInfo?
    //var dob: Birthday?

    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 0, merchDiscount: 0)
    }
    
    func calculateAge() -> Bool {
        return false}
}

struct VIPGuest: EntrantImplementation {
    var entrantType = TypeOfEntrant.vipGuest
    var personalInfo: PersonalInfo?
    //var dob: Birthday?
    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: true)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 10, merchDiscount: 20)
    }
    
    func calculateAge() -> Bool {
        return false
    }
    
}


struct FreeChildGuest: EntrantImplementation {
    var entrantType = TypeOfEntrant.freeChildGuest
    var personalInfo: PersonalInfo?
    //var dob: Birthday?
    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 0, merchDiscount: 0)
    }
    
    func calculateAge() -> Bool {
        let strDOB = "2017-01-01"
        let ageComponents = strDOB.components(separatedBy: "-")
        
        let dateDOB = Calendar.current.date(from: DateComponents(year:
            Int(ageComponents[0]), month: Int(ageComponents[1]), day:
            Int(ageComponents[2])))!
        
        if dateDOB.age < 5 {
            return true
        } else {
            return false
        }

    }
}

extension Date {
    var age: Int {
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year!
    }
    
}
