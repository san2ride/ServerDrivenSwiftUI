//
//  ScreenModel.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}
