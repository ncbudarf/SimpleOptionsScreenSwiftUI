//
//  OVerlayColor.swift
//  SimpleOptionsScreenSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

struct OverlayColor {
    var id: Int
    let color: Color
}

struct OverlayColorView: View {
    let overlayColor: OverlayColor
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        Rectangle()
            .fill(overlayColor.color)
            .frame(width: 30, height: 30)
            .gesture(
                TapGesture()
                    .onEnded { _ in
                        self.settings.defaultColor = self.overlayColor.color
                    }
            )
    }
}

struct OverlayColorListView: View {
    private let overlayColors: [OverlayColor] =
        [OverlayColor(id: 0, color: Color.black),
         OverlayColor(id: 1, color: Color.red),
         OverlayColor(id: 2, color: Color.blue),
         OverlayColor(id: 3, color: Color.green),
         OverlayColor(id: 4, color: Color.yellow),
         OverlayColor(id: 5, color: Color.gray)]

    @EnvironmentObject var settings: UserSettings
        
    var body: some View {
        VStack(alignment: .leading) {
            Text("Pick Overlay Color:")
            ScrollView {
                HStack {
                    ForEach(overlayColors, id: \.id) { color in
                        Group {
                            OverlayColorView(overlayColor: color)
                        }
                    }
                }
            }.frame(height: 40)
        }.padding(.leading)
    }
}
