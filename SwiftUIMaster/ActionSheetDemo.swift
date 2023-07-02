//
//  ActionSheetDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/2.
//

import SwiftUI

struct ActionSheetDemo: View {
    
    @State private var showActionSheet: Bool = false
    func getActionSheet() -> ActionSheet {
        let button1: ActionSheet.Button = .default(Text("default"))
        let button2: ActionSheet.Button = .destructive(Text("default"))
        let button3: ActionSheet.Button = .cancel()

        return ActionSheet(title: Text("This is title"),
                           message: Text("This is message"),
                           buttons: [button1, button2, button3])
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            // 设置VStack的padding
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
}

struct ActionSheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetDemo()
    }
}
