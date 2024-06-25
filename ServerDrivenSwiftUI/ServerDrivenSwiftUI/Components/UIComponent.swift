//
//  UIComponent.swift
//  ServerDrivenSwiftUI
//
//  Created by Jason Sanchez on 6/25/24.
//

import UIKit
import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView
}
