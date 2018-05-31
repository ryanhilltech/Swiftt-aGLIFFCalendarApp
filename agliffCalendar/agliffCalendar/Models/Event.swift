//
//  Event.swift
//  agliffCalendar
//
//  Created by Ryan Hill on 1/10/18.
//  Copyright © 2018 Ryan Hill. All rights reserved.
//

import Foundation

class Event: NSObject {
    
    var title: String?
    var desc: String?
    
    convenience init(title: String, desc: String) {
        self.init()
        
        self.title = title
        self.desc = desc

        
    }
    
}
