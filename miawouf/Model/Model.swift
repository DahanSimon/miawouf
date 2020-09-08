//
//  Model.swift
//  miawouf
//
//  Created by Simon Dahan on 08/09/2020.
//  Copyright © 2020 Simon Dahan. All rights reserved.
//

import Foundation

struct Pet {
    enum Gender {
        case male, female
    }

    var name: String?
    var hasMajority: Bool
    var phone: String?
    var race: String?
    var gender: Gender
}
