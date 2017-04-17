//
//  CodeGraveyard.swift
//  AmusementParkP1
//
//  Created by Annika Noren on 4/8/17.
//  Copyright © 2017 Annika Noren. All rights reserved.
//

import Foundation

/*protocol Birthday {
 var strDOB: String { get }
 
 func calculateAge() -> Bool
 }*/


/*protocol GuestTraits {
 var guestType: GuestType { get set}
 var areaAccess: AreaAccess { get set }
 var rideAccess: RideAccess { get set}
 }
 
 struct ClassicGuest: GuestTraits {
 var guestType = GuestType.classicGuest
 var areaAccess = AreaAccess.amusement
 var rideAccess = RideAccess.allRides
 }*/


/*class Guest {
 var guestType: GuestType
 var areaAcess: AreaAccess
 var rideAccess: RideAccess
 
 init(guestType: GuestType, areaAccess: AreaAccess, rideAccess: RideAccess) {
 self.guestType = guestType
 self.areaAcess = areaAccess
 self.rideAccess = rideAccess
 }
 }
 
 class ClassicGuest: Guest {
 
 override init(guestType: GuestType, areaAccess: AreaAccess, rideAccess: RideAccess) {
 self.guestType = GuestType.ClassicGuest
 self.areaAcess = AreaAccess.amusement
 self.rideAccess = RideAccess.allRides
 super.init()
 }
 }
 
 class VIPGuest: Guest {
 override init(guestType: GuestType, areaAccess: AreaAccess, rideAccess: RideAccess, foodDiscount: FoodDiscount, merchDiscount: MerchDiscout) {
 self.guestType = GuestType.VIPGuest
 self.areaAcess = AreaAccess.amusement
 self.rideAccess = RideAccess.skipLine
 self.foodDiscount = FoodDiscount.ten
 self.merchDiscount = MerchDiscout.twenty
 }
 }
 
 class FreeChildGuest: Guest {
 var dob: NSDate
 
 override init(guestType: GuestType, areaAccess: AreaAccess, rideAccess: RideAccess, foodDiscount: FoodDiscount, merchDiscount: MerchDiscout) {
 self.guestType = GuestType.FreeChildGuest
 self.areaAcess = AreaAccess.amusement
 self.rideAccess = RideAccess.allRides
 self.foodDiscount = FoodDiscount.none
 self.merchDiscount = MerchDiscout.none
 }
 }
 */
/*class ClassicGuest: Guest {
 var rideAccess: RideAccess
 var areaAccess: AreaAccess
 let foodDiscount = 0.0
 let merchDiscount = 0.0
 
 init(dob: NSDate, guestType: GuestType, areaAccess: AreaAccess, rideAccess: RideAccess) {
 self.rideAccess = RideAccess.allRides
 self.areaAccess = AreaAccess.amusement
 super.init(dob: dob, guestType: guestType)
 }
 }
 */
/*struct ClassicGuest {
 var guestType: GuestType
 var areaAccess: AreaAccess
 var rideAccess: RideAccess
 
 init(guestType: GuestType, areaAccess: AreaAccess, rideAccess: RideAccess){
 self.guestType = GuestType.ClassicGuest
 self.areaAccess = AreaAccess.amusement
 self.rideAccess = RideAccess.allRides
 }
 }
 
 struct ClassicGuest {
 var guestType = GuestType.ClassicGuest
 var areaAccess = AreaAccess.amusement
 var rideAccess = RideAccess.allRides
 }*/

/*struct GuestEntrants {
 let guestEntrants: [Guest] = [
 Guest(guestType: GuestType.classicGuest, areaAccess: AreaAccess.amusement, rideAccess: RideAccess.allRides, discountAccessFood: FoodDiscount.none, discountAccessMerch: MerchDiscount.none, firstName: nil, lastName: nil, city: nil, state: nil, zip: nil, dob: nil),
 Guest(guestType: GuestType.vipGuest, areaAccess: AreaAccess.amusement, rideAccess: RideAccess.skipLine, discountAccessFood: FoodDiscount.ten, discountAccessMerch: MerchDiscount.twenty, firstName: nil, lastName: nil, city: nil, state: nil, zip: nil, dob: nil),
 Guest(guestType: GuestType.freeChildGuest, areaAccess: AreaAccess.amusement, rideAccess: RideAccess.allRides, discountAccessFood: FoodDiscount.none, discountAccessMerch: MerchDiscount.none, firstName: nil, lastName: nil, city: nil, state: nil, zip: nil, dob: nil)
 ]
 }
 
 struct Guest {
 let guestType: GuestType
 let areaAccess: AreaAccess
 let rideAccess: RideAccess
 let discountAccessFood: FoodDiscount
 let discountAccessMerch: MerchDiscount
 let firstName: String?
 let lastName: String?
 let city: String?
 let state: String?
 let zip: Int?
 let dob: NSDate?
 }
 */

/*
 class Employee {
 let firstName: String
 let lastName: String
 let streetAddress: String
 let city: String
 let state: String
 let zip: Int
 let type: EmployeeType
 
 init(firstName: String, lastName: String, streetAddress: String, city: String, state: String, zip: Int, type: EmployeeType) {
 self.firstName = firstName
 self.lastName = lastName
 self.streetAddress = streetAddress
 self.city = city
 self.state = state
 self.zip = zip
 self.type = type
 }
 }
 
 class HourlyEmployeeFoodServices: Employee {
 let areaAccess = [AreaAccess.amusement, AreaAccess.kitchen]
 let rideAcess = RideAccess.amusement
 let foodDiscount = FoodDiscount.fifteen
 let merchDiscount = MerchDiscount.twenty
 }
 
 class HourlyEmployeeRideServices: Employee {
 let areaAccess = ["amusement", "ride control"]
 let rideAcess = "all"
 let foodDiscount = 0.15
 let merchDiscount = 0.25
 }
 
 class HourlyEmployeeMaintenance: Employee {
 let areaAccess = ["amusement", "kitchen", "ride control", "maintence"]
 let rideAcess = "all"
 let foodDiscount = 0.15
 let merchDiscount = 0.25
 }
 
 class Manager: Employee {
 let areaAccess = ["amusement", "kitchen", "ride control", "maintence", "office"]
 let rideAcess = "all"
 let foodDiscount = 0.25
 let merchDiscount = 0.25
 }
 */
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
    
