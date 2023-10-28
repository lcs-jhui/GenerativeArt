//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI

struct MosaicView: View {
    var body: some View {
        
        Grid (horizontalSpacing: 0, verticalSpacing: 0){
            GridRow {
                TileView()
                TileView()
                TileView()
            }
        }
    }
}

#Preview {
    MosaicView()
}
