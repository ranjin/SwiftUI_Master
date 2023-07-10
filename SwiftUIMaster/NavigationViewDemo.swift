//
//  NavigationView.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

struct NavigationViewDemo: View {
    var body: some View {
        NavigationView {
            ScrollView {
                /// NavigationLink类似于Push的功能
                NavigationLink("Hello, World", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    ,
                trailing:
                    NavigationLink(destination: MyOtherScreen(), label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.red)
            )
            /// 导航栏标题展示样式
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("3rd screen!"))
                    .navigationBarHidden(true)
            }
        }
    }
}
struct NavigationViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemo()
    }
}
