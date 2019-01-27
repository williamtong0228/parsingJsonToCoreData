//
//  AlphabetLocationZ+CoreDataProperties.swift
//  ParsingJSONMAC
//
//  Created by William Mizawa on 1/9/2018.
//  Copyright © 2018年 Hajime Tousaka. All rights reserved.
//
//

import Foundation
import CoreData


extension AlphabetLocationZ {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AlphabetLocationZ> {
        return NSFetchRequest<AlphabetLocationZ>(entityName: "AlphabetLocationZ")
    }

    @NSManaged public var ccode: String?
    @NSManaged public var city: String?
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?

}
