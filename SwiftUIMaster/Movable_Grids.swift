//
//  ContentView.swift
//  SwiftUI_Movable Grids
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

/**
 参考：https://developer.apple.com/documentation/swiftui/view/dropdestination(for:action:istargeted:)
 */
struct Movable_Grids: View {
    /// View Properties
    @State private var colors: [Color] = [.red, .blue, .purple, .yellow, .black, .indigo, .cyan, .brown, .mint, .orange]
    
    @State private var draggingItem: Color?
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                let columns = Array(repeating: GridItem(spacing: 10), count: 3)
                LazyVGrid(columns: columns, spacing: 10, content: {
                    ForEach(colors, id: \.self) { color in
                        GeometryReader {
                            let size = $0.size
                            RoundedRectangle(cornerRadius: 10)
                                .fill(color.gradient)
                                /// Drag
                                .frame(width: size.width, height: size.height)
                                /// 通过使用onAppear来知道哪个view被拖动了
                                .onAppear {
                                    draggingItem = color
                                }
                                /// 将color这个视图激活，可以完成drag和drop的操作
                                .draggable(color) {
                                    /// custom preview view
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.ultraThinMaterial)
                                    
                                        /// 这样拖动的时候会有size大小的阴影
//                                        .frame(width: size.width, height: size.height)
                                        /// 这样不会有，直接拖动，效果更流畅
                                        .frame(width: 1, height: 1)
                                }
                                /// Drop
                                
                                /**
                                 func dropDestination<T>(
                                     for payloadType: T.Type = T.self,
                                     action: @escaping ([T], CGPoint) -> Bool,
                                     isTargeted: @escaping (Bool) -> Void = { _ in }
                                 ) -> some View where T : Transferable
                                 
                                 payloadType: 被删除模型的预期类型
                                 
                                 action: 一个接受删除的内容并作出适当响应的闭包。动作的第一个参数包含被删除的项。第二个参数包含视图坐标空间中的放置位置。如果删除操作成功，返回true;否则，返回false。
                                 
                                 target: 当拖放操作进入或退出拖放目标区域时调用的闭包。当光标在区域内时，接收值为true，当光标在区域外时，接收值为false。
                                 */
                                .dropDestination(for: Color.self) { items, location in
                                    // 删除操作失败
                                    draggingItem = nil
                                    return false
                                } isTargeted: { status in
                                    if let draggingItem, status, draggingItem != color {
                                        /// Moving Color from source to destionation
                                        if let sourceIndex = colors.firstIndex(of: draggingItem),
                                           let destionationIndex = colors.firstIndex(of: color) {
                                            withAnimation() {
                                                // 先删除sourceItem，然后插入sourceItem
                                                let sourceItem = colors.remove(at: sourceIndex)
                                                colors.insert(sourceItem, at: destionationIndex)
                                            }
                                        }
                                        
                                    }
                                }
                        }
                        .frame(height: 100)
                    }
                })
                .padding(15)
            }
            .navigationTitle("Movable Grid")
        }
    }
}

struct Movable_Grids_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
