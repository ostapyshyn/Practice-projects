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
   
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor = 0
    @State private var additionalSettings = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Colors")) {
                    Picker(selection: $selectedColor, label: Text("Choose a color")) {
                        ForEach(0..<colors.count) {
                            Text(self.colors[$0])
                            
                            
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                

                Toggle(isOn: $additionalSettings) {
                    Text("Settings")
                }
                
                Button(action: {
                    print("Hey!")
                } ) {
                    Text("Save changes")
                        
                    }.disabled(!additionalSettings)
            .navigationBarTitle("Settings")
                
                
            }
        
        
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
