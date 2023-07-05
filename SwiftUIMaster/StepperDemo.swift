//
//  StepperDemo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/4.
//

import SwiftUI

struct StepperDemo: View {
    @State private var stepperVal: Int = 10
    @State private var widthIncreament: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper\(stepperVal)", value: $stepperVal)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 100 + widthIncreament, height: 100)
            Stepper("Stepper2") {
                // 增加
            } onDecrement: {
                // 减少
            }
            .padding(50)
        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            widthIncreament += amount
        }
    }
}

struct StepperDemo_Previews: PreviewProvider {
    static var previews: some View {
        StepperDemo()
    }
}
