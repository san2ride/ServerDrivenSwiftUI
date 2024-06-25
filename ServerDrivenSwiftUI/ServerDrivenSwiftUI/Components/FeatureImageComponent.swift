//
//  FeatureImageComponent.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import Foundation
import SwiftUI

struct FeatureImageComponent: UIComponent {
    let uiModel: FeaturedImageUIModel
    
    var uniqueId: String {
        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
}
