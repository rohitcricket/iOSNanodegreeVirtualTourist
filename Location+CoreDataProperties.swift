//
//  Location+CoreDataProperties.swift
//  VirtualTourist
//
//  Created by ROHIT GUPTA on 11/28/15.
//  Copyright © 2015 ROHIT GUPTA. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Location {

    @NSManaged var name: String?
    @NSManaged var title: String?
    @NSManaged var coordinate: NSNumber?

}
