//
//  ConeView.swift
//  GeometricFiguresCone
//
//  Created by Haowen Chen on 2024-10-29.
//

import SwiftUI

struct ConeView: View {
    @State var currentCone = Cone(height: 5, radius: 3, sideLength: 4)
    
    var body: some View {
        VStack {
            
            Slider(
                value: $currentCone.radius,
                in: 1...100,
                step: 1.0
                
            )
            
            Slider(
                value: $currentCone.height,
                   in: 1...100,
                   step: 1.0
                   )
            
            Slider (
                value: $currentCone.sideLength,
                in: 1...100,
                step: 1.0
                )
            
            
            //Label (show the current slider value)
            Text("Radius is: \(currentCone.radius.formatted())")
            
            
            //Label (show the circumference)
            Text("Height is: \(currentCone.height.formatted())")
            
            
            //Label (show the area)
            Text("Side Length is: \(currentCone.sideLength.formatted())")
            
            //Label (show the diameter)
            Text("Diameter is: \(currentCone.diameter.formatted())")
            
            //Label (show the base area)
            Text("Base Area is: \(currentCone.baseArea.formatted())")
            
            //Label (show the lateral surface)
            Text("Lateral surface area is: \(currentCone.lateralSurface.formatted())")
            
            //Label (show the surface area)
            Text("Surface Area is: \(currentCone.totalSurfaceArea.formatted())")
            
            //Label (show the volume)
            Text("volume is: \(currentCone.volume.formatted())")
            
            Spacer()
        }
        }
    }
    


#Preview {
    ConeView()
}
