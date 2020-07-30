//
//  ContentView.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 19.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI



struct TaskRow: View {
    
    var body: some View {
        Text("Some Task")
    }
}

struct ContentView: View {
   
    
    @State private var showingAlert = false
 
    
    var body: some View {
        Button("Show Action Sheet") {
            self.showingAlert = true
        }.actionSheet(isPresented: $showingAlert) {
            ActionSheet(title: Text("Hello Swift UI"), message: Text("Some Detail message"), buttons: [.default(Text("Dismiss")), .cancel(), .destructive(Text("LOL"))])
        }
 
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
