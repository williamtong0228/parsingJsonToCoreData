//
//  AlphabetLocationP+CoreDataProperties.swift
//  ParsingJSONMAC
//
//  Created by William Mizawa on 1/9/2018.
//  Copyright © 2018年 Hajime Tousaka. All rights reserved.
//
//

import Foundation
import CoreData


extension AlphabetLocationP {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AlphabetLocationP> {
        return NSFetchRequest<AlphabetLocationP>(entityName: "AlphabetLocationP")
    }

    @NSManaged public var ccode: String?
    @NSManaged public var city: String?
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?

}
