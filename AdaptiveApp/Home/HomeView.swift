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
            .padding(.top, 30)
            
            Spacer()
        } // VStack

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(true))
    }
}
