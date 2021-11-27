//
//  BottomCardView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)
            
            Text("SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and as little code as possible. With SwiftUI, you can bring even better experiences to all users, on any Apple device, using just one set of tools and APIs.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            
            Spacer()
        } // VStack
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity) 
        .background(Color("Background 3"))
        .cornerRadius(30)
        .shadow(radius: 20)
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
