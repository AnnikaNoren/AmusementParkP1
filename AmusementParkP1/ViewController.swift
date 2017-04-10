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
        parkEntrant = FreeChildGuest()
        
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

