//
//  AnimalModel.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

// MARK: - LocationElement
struct Animal: Codable,Identifiable {
    let id, name, headline, description: String
    let link: String
    let image: String
    let gallery, fact: [String]
}
