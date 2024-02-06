//
//  ContainerRelativeFrameBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 06/02/2024.
//

import SwiftUI

struct ContainerRelativeFrameBootCamp: View {
    @State private var axis = Axis.Set.horizontal // Custom Axis
     
    var body: some View {
        VStack {
            HStack {
                ForEach(1...5, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 12.0)
                        .fill(.orange.opacity(0.5))
                        .containerRelativeFrame(.horizontal, count: 5, span: 1, spacing: 3.0) // count means parts, and span mean how much each part takes space
                }
            }
            HStack {
                ForEach(1...10, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 12.0)
                        .fill(.orange.opacity(0.5))
                        .containerRelativeFrame(.horizontal, count: 10, span: 1, spacing: 3.0)
                }
            }
            // Custom Sizing
            Color.green
                .containerRelativeFrame(axis) { length, axis in
                    if axis == .horizontal {
                        return length / 10
                    } else {
                        return length / 2
                    }
                }
                .padding()
            Text("Text 1")
                .padding()
                .border(Color.red) // Without relativeFrame
                .containerRelativeFrame([.horizontal])
                .padding()
                .border(Color.black) // With relativeFrame
        }
    }
}

#Preview {
    ContainerRelativeFrameBootCamp()
}
