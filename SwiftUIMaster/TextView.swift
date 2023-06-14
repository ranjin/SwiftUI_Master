//
//  TextView.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/9.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        
//        ScrollView(.vertical, showsIndicators: true) {
//            VStack {
//                ForEach(0..<100) { index in
//                    RoundedRectangle(cornerRadius: 25)
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 200)
//                        .shadow(radius: 10)
//                        .padding()
//                }
//            }
//        }
        
        // 默认竖直方向滚动， 默认展示
        ScrollView {
            VStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) {index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.blue)
                                    .shadow(radius: 10)
                                    .frame(width: 200, height: 200)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
