//
//  AirbnbListingCardView.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .frame(width:  100, height: 100)
                .scaledToFit()
                .clipped()
            VStack{
                
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.subheadline)
                Text(model.description ?? "Listing")
                    .lineLimit(3)
                    .foregroundColor(Color(.secondaryLabel))
                    .font(.body)
            }
        }
    }
}
