//
//  ViewThatFitsBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 06/02/2024.
//

import SwiftUI

struct ViewThatFitsBootCamp: View {
    var body: some View {
        ViewThatFits(in: .horizontal) {
            RoundedRectangle(cornerRadius: 12.0) // This doesnt fit in portrait mode, it only fits in landscape
                .fill(.red)
                .frame(width: 700.0, height: 30.0)
            RoundedRectangle(cornerRadius: 12.0) // This fits in portrait and not in horizontal
                .fill(.yellow)
                .frame(height: 30.0)
        }
        .padding()
        
        
    }
}

#Preview {
    ViewThatFitsBootCamp()
}
