//
//  RepresentativeController.swift
//  Representatives
//
//  Created by James Pacheco on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class RepresentativeController {
    
    static func searchRepsByState(state: String, completion: ([Representative]) -> Void) {
        
        let url = NetworkController.searchURL(state)
        
        NetworkController.dataAtURL(url) { (data, error) -> Void in
            let jsonObject: AnyObject
            guard let data = data else {return}
            do{
                jsonObject = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
                
            } catch {
                completion([])
                return
                
            }
            var arrayOfRepresentatives: [Representative] = []
            if let dictionary = jsonObject as? [String: [[String: String]]] {
                if let representativeArray = dictionary["results"] {
                    for representative in representativeArray {
                        let modelRepresentative = Representative(data: representative)
                        arrayOfRepresentatives.append(modelRepresentative)
                    }
                }
            }
            completion(arrayOfRepresentatives)
            
        }
    }
    
}