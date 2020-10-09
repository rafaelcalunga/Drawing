//
//  HomeUIView.swift
//  Drawing
//
//  Created by Rafael Calunga on 2020-10-09.
//

import SwiftUI

struct HomeUIView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ShapeUIView()) {
                    Text("Shapes")
                }
                NavigationLink(destination: FlowerUIView()) {
                    Text("Flower")
                }
                NavigationLink(destination: ColorCyclingUIView()) {
                    Text("Color Cycling Circle")
                }
            }
            .navigationTitle("Drawing")
        }
    }
}

struct HomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeUIView()
    }
}
