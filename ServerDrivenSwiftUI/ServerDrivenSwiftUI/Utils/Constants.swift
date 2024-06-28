//
//  Constants.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import UIKit

struct Constants {
    
    struct ScreenResources {
        static let baseUrl = "localhost:3000"
        static let petListing = "pet-listing"
        
        static func resource(for resourceName: String) -> URL? {
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedHost = baseUrl
            components.path = "/\(resourceName)"
            return components.url
        }
    }
    /*
    struct Urls {
        static let baseUrl = "http://localhost:3000"
        static let petListing = "\(baseUrl)/pet-listing"
    }
     */
}
