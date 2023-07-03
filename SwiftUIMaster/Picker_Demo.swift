//
//  Picker_Demo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/3.
//

import SwiftUI

struct Picker_Demo: View {
    @State private var selection: String = "1"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Linked"
    ]
    
    /**
     属性设置，包括选中时的背景色，字体颜色等
     */
    init() {
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        VStack {
            HStack {
                Text("Filter:")
                Text(selection)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(15.0)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)

            Picker(
                selection: $selection,
                label:
                    Text("sdfsdf")
//                    HStack {
//                        Text("Filter:")
//                        Text(selection)
//                    }
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(15.0)
//                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
                ,
                content: {
                    ForEach(filterOptions, id: \.self) { option in
                        Text(option).tag(option)
                    }
                })
            // 选择器样式
            .pickerStyle(.segmented)
        }
    }
}

struct Picker_Demo_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Demo()
    }
}
