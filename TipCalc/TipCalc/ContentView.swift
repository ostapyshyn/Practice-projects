//
//  ContentView.swift
//  TipCalc
//
//  Created by Volodymyr Ostapyshyn on 26.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 0
    
    var totalPerPerson: Double {
        let peopleCount     = Double(numberOfPeople + 2)
        let tipSelection    = Double(tipPercentages[tipPercentage])
        let orderAmount     = Double(checkAmount) ?? 0
        let tipValue        = orderAmount / 100 * tipSelection
        let grandTotal      = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    let tipPercentages = [0, 5, 10, 15, 20]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                    Picker(selection: $numberOfPeople, label: Text("Number of people")) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                            
                            
                        }
                    }
                }
                Section(header: Text("How much?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                            
                            
                        }
                
                    }.pickerStyle(SegmentedPickerStyle())

                }
                Section {
                    Text("\(totalPerPerson, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("Tip Calculator", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
