//
//  AirbnbListingsView.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
// to prevent causing retain cycle, we add weak self.

import Foundation

final class AirbnbListingsViewViewModel: ObservableObject {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchListings() {
        service.getListings { [weak self] result in
            switch result {
            case .success(let models):
                self?.listings = models
            case .failure:
                break
                
            }
            
        }
    }
}
