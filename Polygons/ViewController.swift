//
//  ViewController.swift
//  Polygons
//
//  Created by Navya Rayala on 9/14/15.
//  Copyright (c) 2015 Kamal Dandamudi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sidesLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sideStepper: UIStepper!
    
    let polygon=Polygon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initializing polygon instances to test Polygon property observers
        let polygon1 = Polygon(minSides:3,maxSides:7,sides:4)
        println(polygon1.description())
        
        let polygon2 = Polygon(minSides:2,maxSides:15,sides:6)
        //println(polygon2.minSides)
        //println(polygon2.maxSides)
        println(polygon2.description())
        
        let polygon3 = Polygon(minSides:8,maxSides:4,sides:15)
        //println(polygon3.maxSides)
        println(polygon3.description())
        
        let polygon4 = Polygon(minSides:4,maxSides:8,sides:2)
        println(polygon4.description())
        
        //Setting Labels for Polygon sides,Polygon name and printing Polygon description
        sidesLabel.text=String(polygon.sides)
        nameLabel.text=polygon.name
        println(polygon.description())
        
        //Setting min, max and value for sideStepper
        sideStepper.minimumValue=Double(polygon.minSides)
        sideStepper.maximumValue=Double(polygon.maxSides)
        sideStepper.value=Double(polygon.sides)
        
    }

    @IBAction func sideStepperValueChanged(sender: AnyObject) {
        polygon.sides=Int(sideStepper.value)
        sidesLabel.text=String(polygon.sides)
        nameLabel.text=polygon.name
        println(polygon.description())
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}