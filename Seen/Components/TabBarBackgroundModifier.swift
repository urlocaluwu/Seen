//
//  BackgroundBlurEffect.swift
//  Seen
//
//  Created by cutiepie on 10/9/24.
//

import SwiftUI

struct BlurredBackgroundView: View {
    var body: some View {
        Color(.backgroundPrimary)
            .opacity(0.8) // Adjust transparency
            .blur(radius: 10) // Adjust blur radius
    }
}
