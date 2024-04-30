//
//  Date+Extension.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 17/12/2021.
//

import Foundation

extension Date {
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
}
