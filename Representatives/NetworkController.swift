//
//  NetworkController.swift
//  Representatives
//
//  Created by James Pacheco on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class NetworkController {
    
    static let urlString = "http://whoismyrepresentative.com/getall_reps_bystate.php?output=json&state="
    
    static func searchURL(searchString: String) -> NSURL {
        let url = NSURL(string: NetworkController.urlString + searchString)!
            return url
    }
    
    static func dataAtURL(url: NSURL, completion: (data: NSData?, error: NSError?) -> Void) {
        let networkSession = NSURLSession.sharedSession()
        let dataTask = networkSession.dataTaskWithURL(url) { (data, response, error) -> Void in
            if let error = error {
                completion(data: nil, error: error)
                return
            }
            guard let data = data else {
                completion(data: nil, error: nil)
                return
            }
            
            completion(data: data, error: nil)
            
        }
        dataTask.resume()
    }
    
}