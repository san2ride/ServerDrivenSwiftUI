//
//  NetworkService.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/26/24.
//

import Foundation

protocol NetworkService {
    func load(_ resourceName: String) async throws -> ScreenModel 
}
