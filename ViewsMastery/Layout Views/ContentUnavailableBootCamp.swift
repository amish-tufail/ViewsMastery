//
//  ContentUnavailableBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 06/02/2024.
//

import SwiftUI

struct ContentUnavailableBootCamp: View {
    var body: some View {
        VStack {
            ContentUnavailableView("BootCamp", systemImage: "eraser.line.dashed.fill", description: Text("Content BootCamp"))
            
            // This is how Apple wants us to use this
            ContentUnavailableView(label: {
                Label("No Mail", systemImage: "tray.fill")
            }, description: {
                Text("New mails you receive will appear here.")
            }, actions: {
                HStack(spacing: 24.0) {
                    Button(action: {}) {
                        Text("Refresh")
                    }
                    Button(role: .destructive, action: {}) {
                        Text("Load")
                    }
                    .buttonStyle(.borderedProminent)
                }
                .fixedSize()
                .controlSize(.regular)
            })
        }
    }
}

#Preview {
    ContentUnavailableBootCamp()
}
