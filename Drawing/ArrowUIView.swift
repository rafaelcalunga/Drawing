//
//  ArrowUIView.swift
//  Drawing
//
//  Created by Rafael Calunga on 2020-10-12.
//

import SwiftUI

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width / 4, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width / 4, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.width / 4 * 3, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.width / 4 * 3, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ArrowUIView: View {
    @State private var degrees = 0.0
    
    var body: some View {
        VStack {
            Spacer()
            
            Arrow()
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 300, height: 300, alignment: .center)
                .rotationEffect(.init(degrees: degrees))
            
            Spacer()
                
            Text("Degrees: \(Int(degrees))")
            Slider(value: $degrees, in: 0...360, step: 1)
                .padding([.horizontal, .bottom])
        }
    }
}

struct ArrowUIView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowUIView()
    }
}
