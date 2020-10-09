//
//  ShapeUIView.swift
//  Drawing
//
//  Created by Rafael Calunga on 2020-10-06.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
}


struct ShapeUIView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Triangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Spacer()
            
            Triangle()
                .stroke(Color.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 200, height: 200)
            
            Spacer()
            
            Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
                .stroke(Color.blue, lineWidth: 10)
                .frame(width: 200, height: 200)
            
            Spacer()
        }
    }
}

struct ShapeUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeUIView()
    }
}
