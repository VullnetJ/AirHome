//
//  AirbnbListing.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
//

import SwiftUI
import Foundation

struct AirbnbListing: Codable, Hashable, Identifiable {
    let id: String?
    let listing_url: String?
    let name: String?
    let summary: String?
    let space: String?
    let description: String?
    let house_rules: String?
    let thumbnail_url: String?
    let medium_url: String?
    let host_name: String
    let price: Int?
    let xl_picture_url: String?
    let host_picture_url: String?
    let hosting_since: String?
}
