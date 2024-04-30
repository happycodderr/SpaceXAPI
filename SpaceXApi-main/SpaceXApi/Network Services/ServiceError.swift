//
//  ServiceError.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 16/12/2021.
//

import Foundation

enum ServiceError: Error {
    case failedToCreateRequest
    case dataNotFound
    case parsingError
}
