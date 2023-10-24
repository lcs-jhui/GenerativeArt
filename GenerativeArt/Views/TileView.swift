//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI



struct TriangleTopLeft: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // 1
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // 2
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // 3
        
        //Return the path
        return path
        
    }
    
}


struct TriangleBottomLeft: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // 1
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // 2
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // 3
        
        //Return the path
        return path
        
    }
    
}


struct TriangleTopRight: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make an empty path
        var path = Path()
        
        //Define the path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // 1
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // 2
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY)) // 3
        
        //Return the path
        return path
        
    }
    
}

struct TileView: View {
    var body: some View {
        VStack {
            
            //Top right triangle
            TriangleTopLeft()
                //Make the shape be a square
                .aspectRatio(1.0, contentMode: .fit)
            
            //Bottom right triangle
            
            
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
