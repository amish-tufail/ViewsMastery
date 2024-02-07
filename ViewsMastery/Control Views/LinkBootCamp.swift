//
//  LinkBootCamp.swift
//  ViewsMastery
//
//  Created by Amish Tufail on 07/02/2024.
//

import SwiftUI

struct LinkBootCamp: View {
    var body: some View {
        VStack {
            // Ways of using Link
            Link("Go to Apple", destination: URL(string: "https://www.apple.com")!)
            Link("Call Now", destination: URL(string: "tel:923105500217")!)
            Link("Email Me", destination: URL(string: "mailto:amishtufail11@gmail.com")!)
            Link("Message Me", destination: URL(string: "sms:+18885551212&body=Hello")!)
        }
    }
}

#Preview {
    LinkBootCamp()
}
