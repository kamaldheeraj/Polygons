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
        willSet(newMinSides){
            if newMinSides>maxSides{
            minSides=maxSides
            }
            else if newMinSides<3{
            minSides=3
            }
            else{
            minSides=newMinSides
            }
        }
    }
    var maxSides: Int = 12 {
        willSet(newMaxSides){
            if newMaxSides<minSides{
            maxSides=minSides
            }
            else if newMaxSides>12{
            maxSides=12
            }
            else{
            maxSides=newMaxSides
            }
        }
    }
    var sides: Int=3 {
        willSet(newSides){
            if(newSides<3){
                sides=3
            }
            else if(newSides>12){
                sides=12
            }
            else{
                sides=newSides
            }
        }
    }
    var name: String {
        get{
            switch sides {
            case 3:
            return "Triangle"
            case 4:
                return "Quadrilateral"
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
    init(minSides:Int,maxSides:Int,sides:Int){
        self.minSides=minSides
        self.maxSides=maxSides
        self.sides=sides
    }
    convenience init(){
        self.init(minSides: 3, maxSides: 12, sides: 5)
    }
    func interiorAngleInDegree()->Double{
        return 180 * Double(sides-2)/Double(sides)
    }
    func interiorAnglesInRadians()->Double{
        return self.interiorAngleInDegree() * (M_PI/180)
    }
    func description()->String{
        return  "I am a \(self.sides)-sided polygon (a.k.a a \(self.name) with interior angles of \(self.interiorAngleInDegree()) degrees \(self.interiorAnglesInRadians()) radians)"
    }
}