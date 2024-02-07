//
//  DiscloureGroupBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 07/02/2024.
//

import SwiftUI

struct DiscloureGroupBootCamp: View {
    var body: some View {
        DisclosureGroup(
            content: {
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
            },
            label: {
                Text("Group 1")
                    .bold()
            }
        )
        .tint(.orange)
        .padding()
        .background(Color.orange.opacity(0.25))
        .clipShape(.rect(cornerRadius: 12.0))
        .padding()
    }
}

#Preview {
    DiscloureGroupBootCamp()
}
