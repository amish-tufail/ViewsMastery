//
//  GauageBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 07/02/2024.
//

import SwiftUI

struct GauageBootCamp: View {
    @State private var progress = 0.25
    
    var body: some View {
        VStack {
            Spacer()
            Gauge(value: progress, label: {
                Text("Label")
            })
            .gaugeStyle(.accessoryCircular)
            .scaleEffect(3)
            Spacer()
            Gauge(value: progress, label: {
                Text("Label")
            })
            .gaugeStyle(.accessoryCircularCapacity)
            .scaleEffect(3)
            Spacer()
            Gauge(value: progress, label: {
                Text("Label")
            })
            .gaugeStyle(.accessoryLinear)
            .padding()
            Spacer()
        }
    }
}

#Preview {
    GauageBootCamp()
}
