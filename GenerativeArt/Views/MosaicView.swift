//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI

struct MosaicView: View {
    
    //MARK: Stored Properties
    @State var columns = 3.0
    @State var rows = 3
    
    //MARK: Computed Properties
    var body: some View {
        
        VStack {
            Grid (horizontalSpacing: 0, verticalSpacing: 0){
                
                //Number of rows
                ForEach(0..<rows, id: \.self) { j in
                    
                    GridRow {
                        
                        //Repeat within a row (columns)
                        ForEach(0..<Int(columns), id: \.self) { i in
                            TileView()
                        }
                    }
                    
                }
            }
            
            Slider(value: $columns, in: 1...10, step: 1.0)
        }
    }
}

#Preview {
    MosaicView()
}
