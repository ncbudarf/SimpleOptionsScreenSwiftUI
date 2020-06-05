//
//  OverlayToggleView.swift
//  SimpleOptionsScreenSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

struct OverlayToggleView: View {
    @State private var overlayOn = true
    
    var body: some View {
        HStack {
            Toggle(isOn: $overlayOn) {
                Text("Turn Overlay Off:")
                }.padding()
        }
    }
}
