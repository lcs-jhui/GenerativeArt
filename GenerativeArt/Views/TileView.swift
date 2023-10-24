//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI






struct TileView: View {
    
    //MARK: Stored Properties
    let flipOne = Int.random(in: 1...2)
    
    //MARK: Computed Properties
    var body: some View {
        ZStack {
            
            if flipOne == 1 {
                
                //Top Right triangle
                TriangleTopRight()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Left triangle
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            } else {
                
                //Top Left triangle
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Right Triangle
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
