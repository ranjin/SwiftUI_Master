//
//  ViewModelDemo.swift
//  SwiftUIMaster
//
//  Created by Charles on 2023/7/26.
//

import SwiftUI


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

class FruitViewModel: ObservableObject {
    /**
     @Published: 属性包装器, 为我们提供了一种简单的方式来观察和响应属性的变化
     主要作用是为我们自动创建一个可以发布属性变化通知的Publisher。
     当我们在属性面前添加 @Published, 这个属性就会自动获得一个Publisher。
     我们可以订阅这个Publisher来监听属性的变化。
     */
    @Published var fruitsArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    func deleteFruit(index: IndexSet) {
        fruitsArray.remove(atOffsets: index)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "WaterMelon", count: 3)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.fruitsArray.append(fruit1)
            self.fruitsArray.append(fruit2)
            self.fruitsArray.append(fruit3)
            self.isLoading = false
        }
    }
}

struct ViewModelDemo: View {
    
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
//    @State var fruitArray: [FruitModel] = [
//        FruitModel(name: "Apples", count: 5),
////        FruitModel(name: "Apples", count: 5),
////        FruitModel(name: "Apples", count: 5),
//
//    ]
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitsArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                            
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit(index:))
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruits List")
            .navigationBarItems(trailing: NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right").font(.title)
            }))
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitsArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.blue)
                        .font(.headline)
                }
            }
//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("GO BACK")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }

        }
    }
}

struct ViewModelDemo_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelDemo()
//        RandomScreen()
    }
}
