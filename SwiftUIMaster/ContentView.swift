//
//  ContentView.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/7.
//

/**
 Text学习
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.title)
            .italic()
            .underline(true, color: Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
