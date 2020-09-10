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
extension Pet {
    enum Status {
        case accepted
        case rejected(String)
    }
    
    var status: Status {
        if name == nil || name == "" {
            return .rejected("Vous n'avez pas indiqué votre nom !")
        }
        else if hasMajority == false {
            return .rejected("Les mineurs ne sont pas admis.")
        }
        else if phone == nil || phone == "" {
            return .rejected("Vous n'avez pas indiqué votre téléphone !")
        }
        else if race == nil || race == "" {
            return .rejected("Quel est votre race ?")
        }
        return .accepted
    }
}

