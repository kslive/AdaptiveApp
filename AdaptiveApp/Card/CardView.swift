//
//  CardView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Дизайн SwiftUI")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Сертификат")
                            .foregroundColor(Color("Primary"))
                    } // VStack
                    
                    Spacer()
                    
                    Image("Logo SwiftUI")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                } // HStack
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                Image("2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 110, alignment: .top)
                
            } // VStack
        } // VStack
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
