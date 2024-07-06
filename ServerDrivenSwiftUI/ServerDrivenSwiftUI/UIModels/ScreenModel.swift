//
//  ScreenModel.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import Foundation

enum ComponentError: Error {
    case decodingError
}

enum ComponentType: String, Decodable {
    case featuredImage
    case carousel
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(ComponentType.self, forKey: .type)
        self.data = try container.decode(JSON.self, forKey: .data).value as! [String: Any]
    }
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    
    func buildComponents() throws -> [UIComponent] {
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
                case .featuredImage:
                    guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                        throw ComponentError.decodingError
                    }
                    components.append(FeatureImageComponent(uiModel: uiModel))
                case .carousel:
                    <#code#>
            }
        }
        return components
    }
}
