//
//  Polygon.swift
//  Polygons
//
//  Created by Kamal Dandamudi on 9/14/15.
//  Copyright (c) 2015 Kamal Dandamudi. All rights reserved.
//

import Foundation

class Polygon{
    var minSides: Int = 3 {
        //didGet observer for minSides of Polygon
        didSet{
            if minSides<3{
                minSides=3
            }
            if minSides>maxSides{
            minSides=maxSides
            }
        }
        /*willSet{
            if newValue<3{
                minSides=3
            }
            if newValue>maxSides{
                minSides=maxSides
            }
        }*/
    }
    var maxSides: Int = 12 {
        //didGet observer for maxSides of Polygon
        didSet{
            if maxSides<minSides{
            maxSides=minSides
            }
            if maxSides>12{
            maxSides=12
            }
        }
    }
    var sides: Int=3 {
        //didGet observer for sides of Polygon
        didSet{
            if(sides<minSides){
                sides=minSides
            }
            if(sides>maxSides){
                sides=maxSides
            }
        }
    }
    var name: String {
        //Computed Property for name of Polygon
        get{
            switch sides {
            case 3:
            return "Triangle"
            case 4:
                return "Square"
            case 5:
                return "Pentagon"
            case 6:
                return "Hexagon"
            case 7:
                return "Heptagon"
            case 8:
                return "Octagon"
            case 9:
                return "Nonagon"
            case 10:
                return "Decagon"
            case 11:
                return "Hendecagon"
            default:
                return "Dodecagon"
            }
        }
    }
    //Designated Initializer for Polygon class
    init(minSides:Int,maxSides:Int,sides:Int){
        self.setMinSidesTo(minSides)
        self.setMaxSidesTo(maxSides)
        self.setSidesTo(sides)
    }
    //Convenience Initializer for Polygon class
    convenience init(){
        self.init(minSides: 3, maxSides: 12, sides: 5)
    }
    //Method for Interior Angles in Degrees for Polygon
    func interiorAngleInDegree()->Double{
        return 180 * Double(sides-2)/Double(sides)
    }
    //Method for Interior Angles in Radian for Polygon
    func interiorAnglesInRadians()->Double{
        return self.interiorAngleInDegree() * (M_PI/180)
    }
    //Method for description of Polygon
    func description()->String{
        return  "I am a \(self.sides)-sided polygon (a.k.a a \(self.name)) with interior angles of \(self.interiorAngleInDegree()) degrees (\(self.interiorAnglesInRadians()) radians)\n"
    }
    //Method to set maxSides of Polygon
    func setMaxSidesTo(maxSides:Int){
        self.maxSides=maxSides
    }
    //Method to set minSides of Polygon
    func setMinSidesTo(minSides:Int){
        self.minSides=minSides
    }//Method to set sides of Polygon
    func setSidesTo(sides:Int){
        self.sides=sides
    }
}