//
//  AirbnbListingResponse.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
//

import SwiftUI
import Foundation

struct AirbnbListingResponse: Codable {
    let results: [AirbnbListing]
}
