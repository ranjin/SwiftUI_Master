//
//  ToggleDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/3.
//

import SwiftUI

struct ToggleDemo: View {
    @State private var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemo()
    }
}
