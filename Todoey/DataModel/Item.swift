//
//  Item.swift
//  Todoey
//
//  Created by Dylan Ierugan on 6/26/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated: Date? // to sort by date in search
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
