//
//  AlertDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

struct AlertDemo: View {
    @State private var showAlert: Bool = false
    @State private var backgroundColor: Color = .yellow
    @State private var alertTitle: String = ""
    @State private var alertMessage: String = ""

    func extractedFunc() -> Alert {
        return Alert(title:Text("This is the title")
            .foregroundColor(.blue)
            .font(.caption),
              message: Text("this is the message"),
              primaryButton: .destructive(Text("Delete"), action: {
            backgroundColor = .red
        }),
              secondaryButton: .cancel())
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            Button("Click Me!") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                extractedFunc()
            }
        }
    }
}

struct AlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertDemo()
    }
}
