//
//  ContentView.swift
//  SpecialEffectsInSwiftUIBlurBlendingAndMore
//
//  Created by ramil on 07.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount: CGFloat = 0.0
    
    var body: some View {
        
// Example: 1
        
//        ZStack {
//            Image("img6")
//
//            Rectangle()
//                .fill(Color.orange)
//                .blendMode(.multiply)
//        }
//        .frame(width: 400, height: 500)
//        .clipped()
        
        
// Example: 2
        
//        Image("img6").colorMultiply(.orange)

// Example 3:
        
        VStack {
            ZStack {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color.green)
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200 * amount)
                    .blendMode(.screen)

            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
