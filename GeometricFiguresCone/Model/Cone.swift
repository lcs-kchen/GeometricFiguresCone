//
//  Cone.swift
//  GeometricFiguresCone
//
//  Created by Haowen Chen on 2024-10-29.
//

import Foundation
//Define the protocol
protocol Describable {
    var description: String {get}
}

//Cone
struct Cone: Describable{
    //Stored properties
    var height: Double
    var radius: Double
    var sideLength: Double
    
    //Computed properties (Surface Area)
    var diameter: Double{
        return radius * 2
    }
    
    var baseArea: Double {
        return Double.pi * radius * radius
    }
    
    var lateralSurface: Double {
        return Double.pi * radius * sideLength
    }
    
    var totalSurfaceArea: Double {
        return baseArea + lateralSurface
    }
    
    //Computed properties (Volume)
    var volume: Double {
        return (baseArea * height)/3
    }
    //protocal
    var description: String {
        return "The radius of this cone is \(radius) units."
    }
}

