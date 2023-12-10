//
//  APIService.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
//

import Foundation

final class APIService {
    init() {}
    
    // API that we retrive data
    struct Constans {
        static let apiUrl = URL(string: "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?limit=100&lang=en")
    }
    
    public func getListings(completion: @escaping (Result<[AirbnbListing], Error>) -> Void) {
        guard let url = Constans.apiUrl else {
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                if let error {
                    completion(.failure(error))
                }
                return
            }
            
            do {
                let response = try JSONDecoder().decode(AirbnbListingResponse.self, from: data)
                completion(.success(response.results))
            } catch {
                // it writes what is going on with the errors. 
                let json = try? JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
