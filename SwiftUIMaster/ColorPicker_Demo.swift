//
//  ColorPicker_Demo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/3.
//

import SwiftUI

/**
 挺炫酷的，但是为啥这个padding的设置不太顺心了。有时候不起作用
 */
struct ColorPicker_Demo: View {
    @State private var pickerColor: Color = .red
    var body: some View {
        ZStack {
            pickerColor.edgesIgnoringSafeArea(.all)
            ColorPicker("Select a Color", selection: $pickerColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(50)
        }
    }
}

struct ColorPicker_Demo_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_Demo()
    }
}
