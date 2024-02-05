//
//  ScrollViewReaderBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 05/02/2024.
//

import SwiftUI

struct ScrollViewReaderBootCamp: View {
    @State private var value: Int = 0
    var body: some View {
        NavigationStack {
            VStack {
                ScrollViewReader { scrollProxy in // Scroll View reader not needed to be inside Scroll View **It can be outside of scroll View**
                    Button {
                        withAnimation(.snappy) {
                            value = 53
                            scrollProxy.scrollTo(53, anchor: .center)
                        }
                    } label: {
                        Text("Scroll To 53")
                    }
                    ScrollView {
                        LazyVStack(spacing: 10.0) {
                            ForEach(1...100, id: \.self) { index in
                                Text("\(index)")
                                    .id(index) // This is **MUST**, it provides the id of item to which the scrollTo has to scroll to.
                                    .font(.caption)
                                    .background(
                                        Circle()
                                            .fill(index == value ? Color.orange.opacity(0.5) : Color.clear)
                                            .frame(width: 20.0, height: 20.0, alignment: .center)
                                    )
                                    .background(
                                        Circle()
                                            .stroke(.black)
                                            .frame(width: 20.0, height: 20.0, alignment: .center)
                                    )
                            }
                        }
                        .scrollIndicators(.hidden)
                    }
                    Button {
                        withAnimation(.snappy) {
                            value = 1
                            scrollProxy.scrollTo(1, anchor: .top)
                        }
                    } label: {
                        Text("Scroll To top")
                    }
                }
                .navigationTitle("Scroll To")
            }
        }
    }
}

#Preview {
    ScrollViewReaderBootCamp()
}
