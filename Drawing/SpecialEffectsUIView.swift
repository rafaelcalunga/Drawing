//
//  SpecialEffectsUIView.swift
//  Drawing
//
//  Created by Rafael Calunga on 2020-10-11.
//

import SwiftUI

struct SpecialEffectsUIView: View {
    @State private var amount: CGFloat = 0.2
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.red)
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

struct SpecialEffectsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffectsUIView()
    }
}
