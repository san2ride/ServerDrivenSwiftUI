//
//  PetView.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import SwiftUI

struct PetView: View {
    
    @StateObject private var vm = PetListViewModel(service: WebService())
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.uniqueId) { component in
                    component.render()
                }
                
                .navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
    }
}

#Preview {
    PetView()
}
