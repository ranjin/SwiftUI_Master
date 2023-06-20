//
//  StateLearning.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/20.
//

import SwiftUI

struct User {
    var firstName = "JIN"
    var lastName = "RAN"
}
struct StateLearning: View {
    @State private var user = User()
    var body: some View {
        VStack {
            Text("Your names is \(user.firstName)\(user.lastName)")
            TextField("FirstName", text: $user.firstName)
            TextField("LastName", text: $user.lastName)
        }
    }
}

struct StateLearning_Previews: PreviewProvider {
    static var previews: some View {
        StateLearning()
    }
}
