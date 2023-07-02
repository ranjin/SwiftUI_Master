//
//  ContextMenuDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

/**
 长按某个视图，弹出来的alertSheet, 感觉没啥用，谁还会长按
 */
struct ContextMenuDemo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0, content: {
            Image(systemName: "house.fill")
            Text("Hello, World!")
            Text("Hello, World2222!")
        })
        .foregroundColor(.white)
        .padding(30)
        .background(.blue)
        .cornerRadius(30)
        .contextMenu(menuItems: {
            Button {
                print("123")
            } label: {
                Label("Label - 01", systemImage: "flame.fill")
            }
            Text("Menu Item - 1")
            Text("Menu Item - 2")
            Text("Menu Item - 3")

        })
    }
}

struct ContextMenuDemo_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuDemo()
    }
}
