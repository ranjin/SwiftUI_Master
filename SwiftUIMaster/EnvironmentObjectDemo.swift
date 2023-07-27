//
//  EnvironmentObjectDemo.swift
//  SwiftUIMaster
//
//  Created by Charles on 2023/7/27.
//

import SwiftUI

/**
 @EnvironmentObject
 与@ ObservedObject类似，可以看作是全局变量。
 */

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct DetailView: View {
    
    let selectedItem: String
    @ObservedObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalView(viewModel: viewModel)) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
    
}


struct FinalView: View {
    
    @ObservedObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20.0) {
                    ForEach(viewModel.dataArray, id: \.self) {item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.headline)
            }
        }
    }
}
struct EnvironmentObjectDemo: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item, viewModel: viewModel)
                    } label: {
                        Text(item)
                    }

                    Text(item)
                }
            }
            .navigationTitle("iOS Devices")
        }
    }
}

struct EnvironmentObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectDemo()
//        FinalView()
//        DetailView(selectedItem: "iPhone")
    }
}
