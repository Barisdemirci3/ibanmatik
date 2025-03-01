//
//  IBAN.swift
//  ibanmatik
//
//  Created by Barış Demirci on 2.03.2025.
//

import Foundation
import RealmSwift

class iban: Object, Identifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var ibanName: String = ""
    @Persisted var bankName: String = ""
    @Persisted var ibanNumber: String = ""
    
    var identity: ObjectId {id}
}
