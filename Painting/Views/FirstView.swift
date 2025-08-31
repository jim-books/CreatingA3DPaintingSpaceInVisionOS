//
//  FirstView.swift
//  Painting
//
//  Created by jimbook on 31/8/2025.
//  Copyright © 2025 Apple. All rights reserved.
//

import SwiftUI
import RealityKit

struct FirstView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var body: some View {
        Text("Entering immersive space soon...")
            .onAppear {
                Task {
                    await openImmersiveSpace(id: "PaintingSpace")
                }
            }
    }
}

#Preview {
    FirstView()
}
