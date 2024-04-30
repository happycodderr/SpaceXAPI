//
//  FilterCriteria.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 20/12/2021.
//

import Foundation

enum LaunchType {
    case success
    case failure
}

enum SortType {
    case asc
    case desc
}

protocol FilterCriteria {
    var isSelected:Bool {get set}
}
class FilterByYears:FilterCriteria {
    var year:String
    var isSelected:Bool
    
    init(year:String, isYearSelected:Bool = false) {
        self.year = year
        self.isSelected = isYearSelected
    }
}

class FilterByLaunchType:FilterCriteria {
    var launchType:LaunchType
    var isSelected:Bool

    init(launchType:LaunchType = LaunchType.success, isSelected:Bool = false) {
        self.launchType = launchType
        self.isSelected = false
    }
}

class Sorting:FilterCriteria {
    var sortType:SortType
    var isSelected:Bool
    init(sortType:SortType = SortType.asc) {
        self.sortType = sortType
        isSelected = true
    }
}
