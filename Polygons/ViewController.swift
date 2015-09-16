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
    var polygon=Polygon()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setting Labels for Polygon sides and Polygon name
        sidesLabel.text=String(polygon.sides)
        nameLabel.text=polygon.name
        
        //Setting min max and value for sideStepper
        sideStepper.minimumValue=Double(polygon.minSides)
        sideStepper.maximumValue=Double(polygon.maxSides)
        sideStepper.value=Double(polygon.sides)
        
        //Initializing polygon instances
        /*var polygon1 = Polygon(minSides:3,maxSides:7,sides:4)
        println(polygon1.description())
        var polygon2 = Polygon(minSides:2,maxSides:15,sides:6)
        println(polygon2.description())
        var polygon3 = Polygon(minSides:8,maxSides:4,sides:15)
        println(polygon3.description())
        var polygon4 = Polygon(minSides:4,maxSides:8,sides:2)
        println(polygon4.description())*/
        
        var polygon1=Polygon()
        
        polygon1.minSides=3
        polygon1.maxSides=7
        polygon1.sides=4
        println(polygon1.description())
        
        polygon1.minSides=2
        polygon1.maxSides=15
        polygon1.sides=6
        //println(polygon1.minSides)
        println(polygon1.description())
        
        polygon1.minSides=8
        polygon1.maxSides=4
        polygon1.sides=15
        println(polygon1.description())
        
        polygon1.minSides=4
        polygon1.maxSides=8
        polygon1.sides=2
        println(polygon1.description())
        
        let polygon2=Polygon(minSides:2,maxSides:15,sides:16)
        println(polygon2.description())
    }

    @IBAction func sideStepperValueChanged(sender: AnyObject) {
        polygon.sides=Int(sideStepper.value)
        viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}