//
//  TextView.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/9.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!" .lowercased())
            .font(.headline)
            .fontWeight(.bold)
            .underline()
            .italic()
            .strikethrough(true, color: Color.red)
            .multilineTextAlignment(.trailing)
            // 行间距，正表示间距在上方，负表示间距在下方
            .baselineOffset(10)
            // 字间距
            .kerning(1)
            .frame(width: 200, height: 50, alignment: .center)
        
            // 字体颜色
            .foregroundColor(Color.red)
        
            // 字体缩小为原来的10%，来适应不同宽度和大小
//            .minimumScaleFactor(0.6)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
