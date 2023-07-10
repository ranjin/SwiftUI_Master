//
//  OnAppearDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/8.
//

import SwiftUI

struct OnAppearDemo: View {
    @State private var myText: String = "my Text"
    @State private var count: Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .padding()
                            .frame(height: 200)
                            .onAppear {
                                count += 1;
                            }
                    }
                }
            }
            .onAppear()
            .onDisappear()
            .navigationTitle("Title\(count)")
        }
    }
}

struct OnAppearDemo_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearDemo()
    }
}
