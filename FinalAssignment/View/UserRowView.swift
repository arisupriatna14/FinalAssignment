//
//  UserRowView.swift
//  FinalAssignment
//
//  Created by Ari Supriatna on 17/05/24.
//

import SwiftUI

struct UserRowView: View {
    let user: User

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.gray)
                .padding(.trailing, 8)

            VStack(alignment: .leading) {
                Text("ID: \(user.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(user.name)
                    .font(.headline)
                
                Text("@\(user.username)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                NavigationLink(destination: MapView(user: user)) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Address:")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("\(user.address.street), \(user.address.city), \(user.address.zipcode)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.leading, 8)
        }
        .padding(.vertical, 8)
    }
}
