//
//  TextFieldDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

struct TextFieldDemo: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                TextField("this is title", text: $textFieldText)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    dataArray.append(textFieldText)
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                ForEach(dataArray, id: \.self) { text in
                    Text(text)
                }
                Spacer()

            }
            .navigationTitle("TextField Demo")
        }
    }
}

struct TextFieldDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldDemo()
    }
}
