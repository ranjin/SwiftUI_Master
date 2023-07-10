//
//  点语法响应作用域.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/8.
//

import SwiftUI

struct ________: View {
    var body: some View {
        
        /**
         以{}为界，所有相关属性，都应该加载}内部
         如果不清楚，可以就在最底部添加
         但是像Text这样的, .语法直接在后面添加即可
         */
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.body)
        
        
        NavigationView {
            Text("sdf")
                .navigationTitle("sdf")
        }
    }
}

struct _________Previews: PreviewProvider {
    static var previews: some View {
        ________()
    }
}
