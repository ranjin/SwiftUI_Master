//
//  ContentView.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/7.
//

import SwiftUI

/**
 1. 定义：
 Binding: 属性包装器(property wrapper), 用于实现数据在视图之间的双向绑定。
 
 2. 场景：
 在swiftUI中如果我们需要修改一个变量。而这个变量是在父视图或者更高层，
 我们就需要使用@Binding属性包装器将这个变量绑定到当前视图中。
 这样，我们在当前视图中修改这个变量的值时，它也会影响到父视图中的这个变量的值。
 
 3. 步骤：
 (1). 在子视图属性前面加关键词@Binding
 (2). 父视图属性前面加@State
 (3). 当把父视图的@State属性传到子视图的时候，在属性前面加上$
 至此，就建立了关联。
 */
struct ContentView: View {
    @State var isToggleOn = false
    
    // 在父视图内部通过使用$符号访问绑定变量
    var body: some View {
        VStack {
            Text(isToggleOn ? "Toggle is on": "Toggle is off")
            Toggle("Toggle", isOn: $isToggleOn)
                .background(Color.blue)
            ChildView(isToggleOn: $isToggleOn)
        }
    }
}

struct ChildView: View {
    // 通过@Binding实现与父视图isToggleOn的变量双向绑定
    @Binding var isToggleOn: Bool
    var body: some View {
        VStack {
            Text(isToggleOn ? "Toggle is on": "Toggle is off")
            Button("Toggle") {
                isToggleOn.toggle()
            }
            .frame(width: 100, height: 100)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
