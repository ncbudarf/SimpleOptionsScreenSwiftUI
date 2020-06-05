//
//  OverlayOpacityView.swift
//  SimpleOptionsScreenSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

struct OverlayOpacityView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        VStack(alignment: .leading) {
            Text("Adjust Opacity:").padding(.leading)
            Slider(value: Binding(
                get: {
                    self.settings.opacity
                },
                set: { newValue in
                    self.settings.opacity = newValue
                      
            }), in: 0.1...1, step: 0.1).padding().accentColor(.black)
            
        }
    }
}
