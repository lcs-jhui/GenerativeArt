//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI


struct TileView: View {
    
    //MARK: Stored Properties
    let flipOne = Coin.flip()
    
    //Choosing marker colours
    let markerOne = Color.red
    let markerTwo = Color.blue
    
    //Decide on colors
    let flipForColor = Coin.heads
    
    //MARK: Computed Properties
    
    //Set colours based on the coin flip
    var colourOne: Color {
        if flipForColor == .heads {
            return markerOne
        } else {
            return markerTwo
        }
    }
    
    var colourTwo: Color {
        if flipForColor == .heads {
            return markerTwo
        } else {
            return markerOne
        }
    }
    
    var body: some View {
        ZStack {
            
            if flipOne == .heads {
                
                //Top Right triangle
                TriangleTopRight()
                    .stroke(.black)
                    .fill(colourOne)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Left triangle
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(colourTwo)
                    .aspectRatio(1.0, contentMode: .fit)
                
            } else {
                
                //Top Left triangle
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(colourOne)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Right Triangle
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(colourTwo)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
        }
        .padding()
    }
}

#Preview {
    TileView()
}
