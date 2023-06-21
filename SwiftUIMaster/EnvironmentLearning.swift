//
//  EnvironmentLearning.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/21.
//

import SwiftUI

/**
 Environment属性包装器
 SwiftUI使用Environment来传递系统范围的设置。
 例如ContentSizeCategory、LayoutDirection、ColorScheme等
 
 功能：
 1. 通过环境传递系统范围的设置。
 2. SwiftUI使用Environment注入当前视图特定的值。
 3. 依赖注入：添加与当前视图相关的所有ObservableObject
 例如：editMode、presentationMode等。
 */
struct EnvironmentLearning: View {
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        Group {
            if sizeCategory == .accessibilityExtraExtraLarge {
                VStack {
                    Button("Nick"){}
                    Button("Nicole"){}
                    Button("Jack"){}
                }
            } else {
                HStack {
                    Button("Nick"){}
                    Button("Nicole"){}
                    Button("Jack"){}
                }
            }
        }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        Button("dismiss") {
            self.presentation.wrappedValue.dismiss()
        }
    }
}

//struct CalendarView : View {
//    @EnvironmentObject var store: CalendarStore
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(self.store.sleeps, content: <#T##(Int) -> View#>)
//            }
//        }
//    }
//}
struct EnvironmentLearning_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentLearning()
    }
}
