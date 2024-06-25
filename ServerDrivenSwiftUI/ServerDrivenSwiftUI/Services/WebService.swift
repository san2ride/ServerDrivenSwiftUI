//
//  WebService.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidServerResponse
}

class WebService {
    func load(resource: String) async throws {
        
        guard let url = URL(string: resource) else {
            throw NetworkError.invalidUrl
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = resource as? HTTPURLResponse,
            httpResponse.statusCode == 200 else {
                throw NetworkError.invalidServerResponse
            }
    }
}