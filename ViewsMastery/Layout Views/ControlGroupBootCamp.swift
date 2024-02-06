//
//  ControlGroupBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 05/02/2024.
//

import SwiftUI

struct ControlGroupBootCamp: View {
    var body: some View {
        NavigationStack {
            VStack {
                ControlGroup("First") {
                    Button {
                        
                    } label: {
                        Text("Button 1")
                    }
                    Button {
                        
                    } label: {
                        Text("Button 2")
                    }
                }
                .controlGroupStyle(.palette) // Multiple Styles
                
                ControlGroup("First") {
                    Button {
                        
                    } label: {
                        Text("Button 1")
                    }
                    Button {
                        
                    } label: {
                        Text("Button 2")
                    }
                    Button {
                        
                    } label: {
                        Text("Button 3")
                    }
                    Button {
                        
                    } label: {
                        Text("Button 4")
                    }
                }
                .controlGroupStyle(.automatic)
                .padding()

            }
            .navigationTitle("Control Group")
        }
    }
}

#Preview {
    ControlGroupBootCamp()
}
