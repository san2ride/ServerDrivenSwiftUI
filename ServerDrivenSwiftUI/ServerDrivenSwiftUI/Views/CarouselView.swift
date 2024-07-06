//
//  CarouselView.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 7/6/24.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: CarouselUIModel
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(uiModel.imageUrls, id: \.self) { url in
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .frame(width: 200, height: 200)
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
    }
}

#Preview {
    CarouselView(uiModel: CarouselUIModel(imageUrls: []))
}
