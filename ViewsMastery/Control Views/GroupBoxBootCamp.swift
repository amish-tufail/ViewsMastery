//
//  GroupBoxBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 07/02/2024.
//

import SwiftUI

struct GroupBoxBootCamp: View {
    var body: some View {
        GroupBox("Group 1") {
            VStack {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }
        }
        .backgroundStyle(.ultraThinMaterial)
        .padding()
    }
}

#Preview {
    GroupBoxBootCamp()
}
