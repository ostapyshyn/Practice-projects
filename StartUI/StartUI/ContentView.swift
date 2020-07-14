//
//  ContentView.swift
//  StartUI
//
//  Created by Volodymyr Ostapyshyn on 12.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Text("I Am Rich")
                .bold()
            Text("I Am Rich")
                .font(.largeTitle)
            Text("I Am Rich True")
                .padding([.top, .bottom])
                .cornerRadius(15)
            Text("I Am Rich")
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(15)
                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
