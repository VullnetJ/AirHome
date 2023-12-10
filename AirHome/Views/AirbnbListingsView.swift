//
//  AirbnbListingsView.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
//

import SwiftUI

struct AirbnbListingsView: View {
    @StateObject var viewModel = AirbnbListingsViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.listings.isEmpty {
                    ProgressView().progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings) { listing in
                        
                        NavigationLink(destination: AirbnbDetailView(model: listing), label: {
                            AirbnbListingCardView(model: listing)
                            
                        })
                    }
                }
            }
            .navigationTitle("AirHome")
            
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}
