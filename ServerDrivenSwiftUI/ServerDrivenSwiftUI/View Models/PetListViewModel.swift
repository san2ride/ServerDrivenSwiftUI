//
//  PetListViewModel.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import Foundation

@MainActor // Main Thread
class PetListViewModel: ObservableObject {
    
    private var service: NetworkService
    @Published var components: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(Constants.ScreenResources.petListing)
            self.components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
}
