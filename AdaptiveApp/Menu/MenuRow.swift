//
//  MenuRow.swift
//  AdaptiveApp
//
//  Created by Eugene Kiselev on 27.11.2021.
//

import SwiftUI

extension MenuRow {
    struct ViewModel {
        let title: String
        let icon: String
    }
}

struct MenuRow: View {
    private let model: ViewModel
    
    init(model: ViewModel) {
        self.model = model
    }
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: model.icon)
                .font(.system(size: 20, weight: .light, design: .default))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color.gray)
            
            Text(model.title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, alignment: .leading)
            
        } // HStack
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(model: .init(title: "Личный кабинет", icon: "gear"))
    }
}
