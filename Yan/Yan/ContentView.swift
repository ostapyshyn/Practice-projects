//
//  ContentView.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 19.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct User: Codable {
    var firstName: String
    var secondName: String
}



struct ContentView: View {
    @State private var user = User(firstName: "Ivan", secondName: "Petrov")
    
    
    var body: some View {
        Button("Save user") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "Userdata")
            }
        }
        
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
