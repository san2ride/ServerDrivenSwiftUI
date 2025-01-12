//
//  ServerDrivenSwiftUIApp.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import SwiftUI

@main
struct ServerDrivenSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            PetView()
        }
    }
}
