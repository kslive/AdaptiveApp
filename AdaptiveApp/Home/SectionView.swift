//
//  SectionView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Design in SwiftUI")
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image("Logo SwiftUI")
            } // HStack
            
            Text("Descroption Info".uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        } // VStack
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(Color.purple)
        .cornerRadius(30)
        .shadow(color: .purple.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
