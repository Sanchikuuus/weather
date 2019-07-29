//
//  APIManager.swift
//  weather
//
//  Created by Sashko Shel on 7/29/19.
//  Copyright © 2019 Sashko Shel. All rights reserved.
//

import Foundation

typealias JSONTaks = URLSessionDataTask // for better looking
typealias JSONCompletionHandler = ([String: AnyObject]?, HTTPURLResponse?, Error?) -> Void // for better looking too

enum APIResult<T> {
    case Success(T)
    case Failure(Error)
}

protocol APIManager {
    var sessionConfiguration: URLSessionConfiguration { get }
    var session: URLSession { get }
    
    func JSONTaskWith(request: URLRequest, completionHandler: JSONCompletionHandler) -> JSONTaks
    func fetch<T>(request: URLRequest, parse: ([String: AnyObject]) -> T?, completionHandler: (APIResult<T>) -> Void) //
    
    init(sessionConfiguration: URLSessionConfiguration)
}
