//
//  ContentView.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 19.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI


struct customModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
 
    }
}

extension View {
    func customM() -> some View {
        self.modifier(customModifier())
    }
}


struct ContentView: View {
    
    @State private var useGreenText = false
    
    var body: some View {
        Text("Hello, Swift!")
        .customM()
        //.modifier(customModifier())
        
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
