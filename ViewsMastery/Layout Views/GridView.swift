//
//  ContentView.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 04/02/2024.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        
//        The grid row with the most views will establish how many columns there will be.
        
        Grid(horizontalSpacing: 10.0, verticalSpacing: 10.0) { // Spacing
            GridRow {
                Text("Col 1") // Column 1
                Text("Col 2") // Column 2
                Text("Col 3") // Column 3
            }
            .bold()
            .font(.title3)
            .underline()
            .kerning(4.5)
            
            Color.red // This view is inside grid but not inside gridrow so will follow its own layout
                .frame(height: 30.0)
            
            GridRow {
                Text("Text 1") // Column 1
                    .gridCellAnchor(.trailing) // Custom Alignment for cell
                Text("Text 2") // Column 2
                Text("Text 3") // Column 3
//                    .frame(width: 100.0) // Here it appplies to this only
            }
            .frame(width: 100.0) // Applies this same width to all inner elements
            .border(Color.black) // With Border you can see
            GridRow {
                Text("Text 1")
                Text("Text 2")
                    .gridCellUnsizedAxes(.vertical) // This allows this cell to use size of other views in this row vertical/horizontal
                    .border(Color.black)
                    
                // Here created an invisible column
            } // You can see it maintains the columns
            GridRow {
                Text("Text 1")
                   
                    .gridCellColumns(2) // This tell how many column this view can take
                    .frame(maxWidth: .infinity)
                    .border(Color.black)
                Text("Text 2")
                    .gridColumnAlignment(.center) // Overrides whole column Alignment
            }
        }
    }
}

#Preview {
    GridView()
}
