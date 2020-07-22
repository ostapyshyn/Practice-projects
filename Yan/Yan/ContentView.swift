//
//  ContentView.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 19.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        VStack {
            
            Image("roc")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .gesture(DragGesture(minimumDistance: 50)
                    .onEnded { _ in
                        print("Dragged")
                        
                })
        }
        
        
        
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
