//
//  ContentView.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 19.07.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetail = true // binding
    
    var body: some View {
        VStack {
            Button(action: {
                self.showDetail.toggle()
            }) {
                Text("Show Hello!")
            }
            if showDetail {
                Text("Details")
            }
        }
        
        
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
