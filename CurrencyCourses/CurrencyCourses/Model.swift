//
//  Model.swift
//  CurrencyCourses
//
//  Created by Volodymyr Ostapyshyn on 03.06.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

//<NumCode>826</NumCode>
//<CharCode>GBP</CharCode>
//<Nominal>1</Nominal>
//<Name>Фунт стерлингов Соединенного королевства</Name>
//<Value>43,8254</Value>

class Currency {
    var Numcode: String?
    var CharCode: String?
    
    var Nomial: String?
    var nominalDouble: Double?
    
    var Name: String?
    
    var Value: String?
    var valueDouble: Double?
    
}

class Model: NSObject {
    static let shared = Model()
    
    var currencies: [Currency] = []
    
    var pathForXML: String {
        return ""
    }
    
    var urlForXML: URL? {
        return nil
    }
    
    func loadXMLFile(data: Data) {
        
    }
    
    func parseXML() {
        
    }
}
