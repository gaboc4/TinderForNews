//
//  Source.swift
//  Tinder for News
//
//  Created by Gabriel Centeno on 3/25/17.
//  Copyright © 2017 Gabriel Centeno. All rights reserved.
//

import Foundation
import UIKit

class Source {
    
    //MARK: Properties
    
    
    var name: String
    var selected: Bool
    var description: String
    var apiSource = String()
    
    init(name: String, selected: Bool, description: String, apiSource: String) {
        self.name = name
        self.selected = selected
        self.description = description
        self.apiSource = apiSource
    }
    
    
    
}
