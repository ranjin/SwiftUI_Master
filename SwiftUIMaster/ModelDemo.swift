//
//  ModelDemo.swift
//  SwiftUIMaster
//
//  Created by Charles on 2023/7/21.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let nickName: String
    let followerCount: Int
    let isVerified: Bool
}
struct ModelDemo: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", nickName: "@nick", followerCount: 88, isVerified: true),
        UserModel(displayName: "James", nickName: "@james", followerCount: 100, isVerified: false),
        UserModel(displayName: "Nicole", nickName: "@nicole", followerCount: 288, isVerified: false)
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text(user.nickName)
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelDemo_Previews: PreviewProvider {
    static var previews: some View {
        ModelDemo()
    }
}
