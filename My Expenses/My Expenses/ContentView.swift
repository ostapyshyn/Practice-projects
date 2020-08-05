//
//  ContentView.swift
//  My Expenses
//
//  Created by Volodymyr Ostapyshyn on 05.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

struct ExpenseItem {
    let name: String
    let type: String
    let amount: Int
    
}

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
    
}


struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                    
                }
            }
        .navigationBarTitle("My Expenses")
            .navigationBarItems(trailing:
                Button(action: {
                    let expense = ExpenseItem(name: "Test", type: "", amount: 50)
                    self.expenses.items.append(expense)
                
            }) {
                Image(systemName: "plus")
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
