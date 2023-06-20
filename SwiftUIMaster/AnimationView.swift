//
//  AnimationView.swift
//  SwiftUIMaster
//
//  Created by apus on 2023/6/20.
//

import SwiftUI

struct AnimationView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        
        VStack{
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)
                ){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ?  50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
