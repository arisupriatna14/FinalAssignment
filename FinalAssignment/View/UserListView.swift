//
//  UserListView.swift
//  FinalAssignment
//
//  Created by Ari Supriatna on 17/05/24.
//

import SwiftUI

struct UserListView: View {
    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                } else {
                    List(viewModel.users) { user in
                        UserRowView(user: user)
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
}


#Preview {
    UserListView()
}
