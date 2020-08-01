//
//  UserSettings.swift
//  Yan
//
//  Created by Volodymyr Ostapyshyn on 01.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
