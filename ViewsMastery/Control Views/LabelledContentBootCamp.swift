//
//  LabelledContentBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 07/02/2024.
//

import SwiftUI

struct LabelledContentBootCamp: View {
    var body: some View {
        VStack {
            // Normal Label
            List {
                Label("Normal Label", systemImage: "star.fill")
                Text("Normal VS Labeled")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                LabeledContent("Labeled Content") { // This is used when you have a title and corresponding value
                    Label("Normal Label", systemImage: "star.fill")
                }
            }
        }
    }
}

#Preview {
    LabelledContentBootCamp()
}
