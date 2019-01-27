//
//  MyLocation.swift
//  ParsingJSONMAC
//
//  Created by Hajime Tousaka on 25/8/2018.
//  Copyright © 2018 Hajime Tousaka. All rights reserved.
//

import Foundation
struct MyLocation:Decodable {
    let ccode:String
    let City:String
    let Lat:String
    let Long:String
}
