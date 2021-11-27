//
//  TitleView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Сертификаты")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            } // HStack
            .padding()
            
            Spacer()
        }  // VStack
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
