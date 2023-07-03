//
//  TextEditorDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/3.
//

import SwiftUI

struct TextEditorDemo: View {
    @State private var textEditorStr = "this is a textEditor"
    var body: some View {
        
        NavigationView {
            
            VStack {
                TextEditor(text: $textEditorStr)
//                    .background(Color.red)
                    .frame(height: 250)
                    .font(.largeTitle)
                Button {
                    print("123")
                } label: {
                    Text("Save")
                }
                Spacer()

            }
            .navigationTitle("NavigationView")
            .padding()
            .background(.green)
        }
    }
}

struct TextEditorDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemo()
    }
}
