//
//  LoginBase.swift
//  TripSome
//
//  Created by AL Mustakim on 13/2/20.
//  Copyright © 2020 AL Mustakim. All rights reserved.
//

import Foundation
import UIKit
struct loginBase : Codable {
    let response : String?
    let pk : Int?
    let email : String?
    let token : String?

    enum CodingKeys: String, CodingKey {

        case response = "response"
        case pk = "pk"
        case email = "email"
        case token = "token"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        response = try values.decodeIfPresent(String.self, forKey: .response)
        pk = try values.decodeIfPresent(Int.self, forKey: .pk)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        token = try values.decodeIfPresent(String.self, forKey: .token)
    }

}
