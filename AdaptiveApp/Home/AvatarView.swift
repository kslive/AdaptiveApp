//
//  AvatarView.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

struct AvatarView: View {
    @Binding var showProfile: Bool
    
    var body: some View {
        Button {
            showProfile.toggle()
        } label: {
            Image("Avatar")
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        }
    }
}


struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(showProfile: .constant(true))
    }
}
