//
//  AlphabetLocationN+CoreDataProperties.swift
//  ParsingJSONMAC
//
//  Created by William Mizawa on 1/9/2018.
//  Copyright © 2018年 Hajime Tousaka. All rights reserved.
//
//

import Foundation
import CoreData


extension AlphabetLocationN {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AlphabetLocationN> {
        return NSFetchRequest<AlphabetLocationN>(entityName: "AlphabetLocationN")
    }

    @NSManaged public var ccode: String?
    @NSManaged public var city: String?
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?

}
