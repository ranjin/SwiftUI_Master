//
//  ScrollViewPage.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/14.
//

import SwiftUI

struct ScrollViewPage: View {
    /**
     ScrollView嵌套ScrollView
     */
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.blue)
                                    .frame(width: 200, height: 200)
                                    .padding()
                                    .shadow(radius: 10)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPage()
    }
}
