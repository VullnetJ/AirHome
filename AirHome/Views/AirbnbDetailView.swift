//
//  AirbnbDetailView.swift
//  AirHome
//
//  Created by VullnetJ on 9.12.2023.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        // Scroll view that is vertical
        VStack(alignment: .leading) {
            ScrollView(.vertical) {
                // Picture
                
                AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                // Info
                Text(model.name ?? "")
                    .bold()
                    .padding()
                
                if let price = model.price {
                    Text("Nightly Rate: \(price.formatted(.currency(code: "EUR")))")
                }
                
                Text(model.description ?? "")
                    .padding()
                Text(model.summary ?? "")
                    .padding()
                Text("House Rules: \(model.house_rules ?? "")")
                    .padding()
                Text("Space: \(model.space ?? "")")
                    .padding()
                
                
                // Host Info
                Text("About Your Host").bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack {
                
                    AsyncImage(url: URL(string: model.host_picture_url ?? ""))
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    Text(model.host_name)
                        .bold()
                }
                Text("Hosting Since: \(model.hosting_since ?? "")")
            }
            
        }.padding()
            .navigationTitle(model.name ?? "Listing" )
    }
}
