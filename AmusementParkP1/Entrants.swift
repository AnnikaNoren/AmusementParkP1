//
//  Entrants.swift
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
    case hourlyEmployeeRides
    case hourlyEmployeeMaintenence
    case manager
}

enum TypeOfErrors: Error {
    case olderThanFive
    case insufficientData
    case invalidDate
}

protocol EntrantImplementation {
    var entrantType: TypeOfEntrant { get }
    var personalInfo: PersonalInfo { get }
    
    func areaAccess() -> AreaAccess
    func rideAccess() -> RideAccess
    func fooddiscountAccess() -> FoodAndMerchDiscount
    func verifyEntrant() throws -> Void
}

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
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zip: String?
    var dob: String?
}


struct ClassicGuest: EntrantImplementation {
    var entrantType = TypeOfEntrant.classicGuest
    var personalInfo: PersonalInfo = PersonalInfo(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zip: nil, dob: nil)
    

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
    
    func verifyEntrant() {}
}

struct VIPGuest: EntrantImplementation {
    var entrantType = TypeOfEntrant.vipGuest
    var personalInfo: PersonalInfo = PersonalInfo(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zip: nil, dob: nil)

    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: true)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 10, merchDiscount: 20)
    }
    
    func verifyEntrant() {}
}


struct FreeChildGuest: EntrantImplementation {
    var entrantType = TypeOfEntrant.freeChildGuest
    var personalInfo: PersonalInfo =  PersonalInfo(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zip: nil, dob: nil)
    
    
    init(dob: String){
        self.personalInfo = PersonalInfo(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zip: nil, dob: dob)
    }
    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: false, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 0, merchDiscount: 0)
    }
    
    
    private func getAge() -> Int {
        guard let strDOB = personalInfo.dob else {
            return -1
        }
        //Disclaimer: This age calculation is not completely my code, I found it via google search
        let ageComponents = strDOB.components(separatedBy: "-")
        
        let dateDOB = Calendar.current.date(from: DateComponents(year:
            Int(ageComponents[0]), month: Int(ageComponents[1]), day:
            Int(ageComponents[2])))!
        
        return dateDOB.age
    }
    
    func verifyEntrant() throws {
        if getAge() >= 5 {
            throw TypeOfErrors.olderThanFive
        }
        
        if getAge() == -1 {
            throw TypeOfErrors.invalidDate
        }
    }
}

extension Date {
    var age: Int {
        if let dcAge = Calendar.current.dateComponents([.year], from: self, to: Date()).year {
            return dcAge
        } else {
            return -1
        }
    }
}



struct HourlyEmployeeFood: EntrantImplementation {
    var entrantType = TypeOfEntrant.hourlyEmployeeFood
    var personalInfo: PersonalInfo
    
    
    init(personalInfo: PersonalInfo){
        self.personalInfo = personalInfo
    }

    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: true, rideControlArea: false, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 15, merchDiscount: 25)
    }
    
    func verifyEntrant() throws {
        guard let _ = personalInfo.firstName, let _ = personalInfo.lastName, let _ = personalInfo.streetAddress,
            let _ = personalInfo.city, let _ = personalInfo.state, let _ = personalInfo.zip else {
                throw TypeOfErrors.insufficientData
        }
        
    }
}

struct HourlyEmployeeRides: EntrantImplementation {
    var entrantType = TypeOfEntrant.hourlyEmployeeRides
    var personalInfo: PersonalInfo
    
    
    init(personalInfo: PersonalInfo){
        self.personalInfo = personalInfo
    }
    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: true, maintenanceArea: false, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 15, merchDiscount: 25)
    }
    
    func verifyEntrant() throws {
        guard let _ = personalInfo.firstName, let _ = personalInfo.lastName, let _ = personalInfo.streetAddress,
            let _ = personalInfo.city, let _ = personalInfo.state, let _ = personalInfo.zip else {
                throw TypeOfErrors.insufficientData
            }
    }
}

struct HourlyEmployeeMaintenance: EntrantImplementation {
    var entrantType = TypeOfEntrant.hourlyEmployeeMaintenence
    var personalInfo: PersonalInfo
    
    
    init(personalInfo: PersonalInfo){
        self.personalInfo = personalInfo
    }
    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: false, rideControlArea: false, maintenanceArea: true, officeArea: false)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 15, merchDiscount: 25)
    }
    
    func verifyEntrant() throws {
        guard let _ = personalInfo.firstName, let _ = personalInfo.lastName, let _ = personalInfo.streetAddress,
            let _ = personalInfo.city, let _ = personalInfo.state, let _ = personalInfo.zip else {
                throw TypeOfErrors.insufficientData
        }
    }
}

struct Manager: EntrantImplementation {
    var entrantType = TypeOfEntrant.manager
    var personalInfo: PersonalInfo
    
    init(personalInfo: PersonalInfo){
        self.personalInfo = personalInfo
    }

    
    func areaAccess() -> AreaAccess {
        return AreaAccess(amusement: true, kitchenArea: true, rideControlArea: true, maintenanceArea: true, officeArea: true)
    }
    
    func rideAccess() -> RideAccess {
        return RideAccess(allRides: true, skipLine: false)
    }
    
    func fooddiscountAccess() -> FoodAndMerchDiscount {
        return FoodAndMerchDiscount(foodDiscount: 25, merchDiscount: 25)
    }
    
    func verifyEntrant() throws {
        guard let _ = personalInfo.firstName, let _ = personalInfo.lastName, let _ = personalInfo.streetAddress,
            let _ = personalInfo.city, let _ = personalInfo.state, let _ = personalInfo.zip else {
                throw TypeOfErrors.insufficientData
        }
    }
}
