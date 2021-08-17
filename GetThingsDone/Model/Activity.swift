//
//  Activity.swift
//  GetThingsDone
//
//  Created by Marc Jacques on 8/16/21.
//

import Foundation

struct Activity {
    let name: String
    var start: String
    var stop: String
    var reminderIntervals: Int
}

//just thought about this: maybe we don't need to track the reminder label. Maybe we can make it a computed property derived from start and stop time data.
//also should we be collecting location data?
