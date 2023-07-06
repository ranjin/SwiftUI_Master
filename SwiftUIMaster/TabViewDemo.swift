//
//  TabViewDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/6.
//

import SwiftUI

struct TabViewDemo: View {
    @State var selectedTab: Int = 0
    var body: some View {
        
        TabView {
            RoundedRectangle(cornerRadius: 25)
//                .accentColor(.red)
                .foregroundColor(.red)
                .padding(15)
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.blue)
                .padding(15)
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.purple)
                .padding(15)
        }
        .frame(height: 300)
        .tabViewStyle(.page)
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem() {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
    }
}


struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack {
            Text("Home Page")
//                .font(.headline)
                .background(.blue)
                .frame(width: 100, height: 100)
                .padding(20)
//                .padding(.horizontal)
            Button {
                selectedTab = 2
            } label: {
                Text("sdfsdfsdf")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }

            
        }
    }
    
}
struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}
