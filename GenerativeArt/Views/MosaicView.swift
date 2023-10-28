//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI

struct MosaicView: View {
    
    //MARK: Stored Properties
    let columns = 7
    let rows = 4
    
    //MARK: Computed Properties
    var body: some View {
        
        VStack {
            Grid (horizontalSpacing: 0, verticalSpacing: 0){
                
                //Number of rows
                ForEach(0..<rows, id: \.self) { j in
                    
                    GridRow {
                        
                        //Repeat within a row (columns)
                        ForEach(0..<columns, id: \.self) { i in
                            TileView()
                        }
                    }
                    
                }
            }
            
            
        }
    }
}

#Preview {
    MosaicView()
}
