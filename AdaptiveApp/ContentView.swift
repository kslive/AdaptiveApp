//
//  ContentView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var showCard = false
    @State private var viewState: CGSize = .zero
    @State private var bottomState: CGSize = .zero
    @State private var showFull = false
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default, value: show)
            
            BackCardView()
                .frame(width: showCard ? 300 : 340, height: 220)
                .background(show ? Color.purple : Color.pink)
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -180 : 0)
                .scaleEffect(showCard ? 1 : 0.9)
                .rotationEffect(.degrees(show ? 0 : 10))
                .rotationEffect(.degrees(showCard ? -10 : 0))
                .rotation3DEffect(.degrees(showCard ? 0 : 10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5), value: show)
                .animation(.easeInOut(duration: 0.3), value: showCard)
            
            BackCardView()
                .frame(width: 340, height: 220)
                .background(show ? Color.pink : Color.purple)
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -200 : -20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -140 : 0)
                .scaleEffect(showCard ? 1 : 0.95)
                .rotationEffect(.degrees(show ? 0 : 5))
                .rotationEffect(.degrees(showCard ? -5 : 0))
                .rotation3DEffect(.degrees(showCard ? 0 : 5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3), value: show)
                .animation(.easeInOut(duration: 0.3), value: showCard)
            
            CardView()
                .frame(width: showCard ? 375 : 340, height: 220)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                .shadow(radius: 20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -100 : 0)
                .blendMode(.hardLight)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0), value: viewState)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0), value: showCard)
                .onTapGesture {
                    showCard.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            viewState = value.translation
                            show = true
                        }
                        .onEnded{ _ in
                            viewState = .zero
                            show = false
                        }
                )
            
            BottomCardView()
                .offset(x: 0, y: showCard ? 360 : 1000)
                .offset(y: bottomState.height)
                .blur(radius: show ? 20 : 0)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8), value: showCard)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            bottomState = value.translation
                            
                            if showFull {
                                bottomState.height += -300
                            }
                            
                            if bottomState.height < -300 {
                                bottomState.height = -300
                            }
                        }
                        .onEnded { _ in
                            if bottomState.height > 50 {
                                showCard = false
                            }
                            
                            if (bottomState.height < -100 && !showFull) || (bottomState.height < 250 && showFull) {
                                bottomState.height = -300
                                showFull = true
                            } else {
                                bottomState = .zero
                                showFull = false
                            }
                        }
                )
            
        } // ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
