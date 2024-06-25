//
//  PetListViewModel.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import Foundation

@MainActor // Main Thread
class PetListViewModel: ObservableObject {
    
    private var service: WebService
    @Published var components: [UIComponent] = []
    
    init(service: WebService) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(resource: Constants.Urls.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
}
