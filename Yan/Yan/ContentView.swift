//
//  ContentView.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 19.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI





struct ContentView: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your score is \(settings.score)  ")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score")
            }
            
            
            
        }
        
        
        
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
