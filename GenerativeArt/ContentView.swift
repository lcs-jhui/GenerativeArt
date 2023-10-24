//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Justin Hui on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Rectangle()
                //Make the shape be a square
                .aspectRatio(1.0, contentMode: .fit)
                .padding(100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
