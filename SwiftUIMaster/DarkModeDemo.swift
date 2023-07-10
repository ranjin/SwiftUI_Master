//
//  DarkModeDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/8.
//

import SwiftUI

struct DarkModeDemo: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Text("This text is primary")
                .foregroundColor(.primary)
            Text("This text is primary")
                .foregroundColor(.secondary)
            Text("This text is primary")
                .foregroundColor(.black)
            Text("This text is primary")
                .foregroundColor(Color("customColor"))
            Text("This text is primary")
                .foregroundColor(Color("customColor"))
            Text("Test")
                .foregroundColor(colorScheme == .light ? .green : .red)

        }


    }
}

struct DarkModeDemo_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeDemo()
    }
}
