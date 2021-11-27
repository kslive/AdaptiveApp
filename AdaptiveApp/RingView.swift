//
//  RingView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.2, to: 1)
                .stroke(LinearGradient(gradient: .init(colors: [.red, .purple]),
                                       startPoint: .topTrailing,
                                       endPoint: .bottomLeading),
                        style: StrokeStyle(lineWidth: 5, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (1, 0, 0))
                .frame(width: 44, height: 40)
                .shadow(color: .blue.opacity(0.1), radius: 3, x: 0, y: 3)
            
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5))
                .frame(width: 44, height: 40)
            
            Text("78%")
                .font(.caption)
                .fontWeight(.bold)
        } // ZStack
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
