//
//  LazyVGridPage.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/14.
//

import SwiftUI

struct LazyVGridPage: View {
    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        
    ]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 70)
            }
        }
    }
}

struct LazyVGridPage_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridPage()
    }
}
