//
//  Polygon.swift
//  Polygons
//
//  Created by Navya Rayala on 9/14/15.
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
    var sides: Int? {
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
    
}