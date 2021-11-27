//
//  Home.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct Home: View {
    @State private var showProfile = false
    @State private var viewState: CGSize = .zero 
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.1)
                .ignoresSafeArea()
            
            HomeView(showProfile: $showProfile)
                .padding(.top, 44)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                .offset(y: showProfile ? -450 : 0)
                .rotation3DEffect(.degrees(showProfile ? (viewState.height / 15) : 0), axis: (10, 0, 0))
                .scaleEffect(showProfile ? 0.9 : 1)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: showProfile)
                .ignoresSafeArea()
            
            MenuView()
                .background(Color.blue.opacity(0.001))
                .offset(y: showProfile ? 0 : 1000)
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: showProfile)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: viewState)
                .onTapGesture {
                    showProfile.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            viewState = value.translation
                            
                            if viewState.height > 50 {
                                showProfile = false
                            }
                        }
                        .onEnded { _ in
                            viewState = .zero
                        }
                )
        } // ZStack
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
