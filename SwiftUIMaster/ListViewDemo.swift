//
//  ListViewDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

struct ListViewDemo: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
        "tomota", "tomota2", "tomota3", "tomota4"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: HStack {
                        Text("fruits")
                            .foregroundColor(.red)
                        Image(systemName: "flame.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    }) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.description)
//                                .background(Color.pink)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .padding(.vertical)
                    }
                        .onDelete { indexSet in
                            delete(indexSet: indexSet)
                        }
                        .onMove { indexSet, int in
                            move(indexSet: indexSet, offset: int)
                        }
                        .accentColor(.primary)
                }
                Section(
                    header: Text("veggies")) {
                        ForEach(veggies, id: \.self) { veggies in
                            Text(veggies.description)
                    }
                }
            }
            .accentColor(.pink)
            .listStyle(.automatic)
            .navigationTitle("Nice Fruits")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
    }
    
    
    var addButton: some View {
        Button("Add", action: {
            add(fruit: "peach")
        })
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, offset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: offset)
    }
    
    func add(fruit: String) {
        fruits.append(fruit)
    }
}

struct ListViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ListViewDemo()
    }
}
