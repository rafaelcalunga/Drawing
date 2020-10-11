//
//  ImageEffectsUIView.swift
//  Drawing
//
//  Created by Rafael Calunga on 2020-10-11.
//

import SwiftUI

struct ImageEffectsUIView: View {
    var body: some View {
        VStack {
            Image("matthew")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .colorMultiply(.blue)
                .clipped()
                .padding()
            
            Image("matthew")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipped()
                .padding()
                .blur(radius: 5)
        }
    }
}

struct ImageEffectsUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageEffectsUIView()
    }
}
