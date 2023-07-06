//
//  SlidderDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/6.
//

import SwiftUI

struct SlidderDemo: View {
    @State private var sliderVal: Double = 10
    var body: some View {
        VStack {
            Text("Slider")
            Text(String(format: "%.1f", sliderVal))
//            Slider(value: $sliderVal, in: 0...100)
            Slider(value: $sliderVal, in: 0...10, step: 0.5)
                .accentColor(.red)
        }
    }
}

struct SlidderDemo_Previews: PreviewProvider {
    static var previews: some View {
        SlidderDemo()
    }
}
