//
//  Representative.swift
//  Representatives
//
//  Created by James Pacheco on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class Representative {
    
    static let nameKey = "name"
    static let partyKey = "party"
    static let stateKey = "state"
    static let districtKey = "district"
    static let phoneKey = "phone"
    static let officeKey = "office"
    static let linkKey = "link"
    
    var name: String?
    var party: String?
    var state: String?
    var district: String?
    var phone: String?
    var office: String?
    var link: String?
    
    init(data: [String: String]) {
        self.name = data[Representative.nameKey]
        self.party = data[Representative.partyKey]
        self.state = data[Representative.stateKey]
        self.district = data[Representative.districtKey]
        self.phone = data[Representative.phoneKey]
        self.office = data[Representative.officeKey]
        self.link = data[Representative.linkKey]
    }
    
}