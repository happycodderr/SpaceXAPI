//
//  ApiRequest.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 16/12/2021.
//
import Foundation

protocol ApiRequestType {
    var baseUrl:String {get}
    var path:String {get}
    var params:[String:String] {get}
}

struct ApiRequest:ApiRequestType {
    var baseUrl: String
    var path: String
    var params: [String : String]
}
