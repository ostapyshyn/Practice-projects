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
    
    var body: some View {
      
        
         List() {
            Section(header: Text("Important Tasks"), footer:Text("Footer Optional")) {
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other Tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
            }.listRowBackground(Color.yellow)
        }.listStyle(GroupedListStyle())
        
    }
    
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
