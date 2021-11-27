//
//  HomeView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    
    var body: some View {
        VStack {
            HStack {
                AvatarView(showProfile: $showProfile)
                
                Spacer()
                
            } // HStack
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0 ..< 5) { item in
                        GeometryReader { geometry in
                            SectionView()
                                .rotation3DEffect(.degrees(geometry.frame(in: .global).minX - 30) / -20,
                                                  axis: (0, 10, 0))
                        } // GeometryReader
                        .frame(width: 275, height: 275)
                        
                    } // ForEach
                    
                } // HStack
                
                .padding(30)
                .padding(.bottom, 30)
            } // ScrollView
            
            Spacer()
        } // VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(true))
    }
}
