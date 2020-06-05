//
//  OverlayTexture.swift
//  SimpleOptionsScreenSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

struct OverlayTexture {
    var id: Int
    let imageURL: String
}

struct OverlayTexturesView: View {
    let overlayTexture: OverlayTexture
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        Image("\(overlayTexture.imageURL)")
            .resizable()
            .renderingMode(.template)
            .foregroundColor(settings.defaultColor)
            .opacity(settings.opacity)
            .frame(width: 64, height: 64)
            .gesture(
                TapGesture()
                    .onEnded { _ in
                        
                    }
            )
    }
}

struct OverlayTexturesListView: View {
    private let overlayTextures: [OverlayTexture] =
        [OverlayTexture(id: 0, imageURL: "calculator-9-64"),
         OverlayTexture(id: 1, imageURL: "crown-5-64"),
         OverlayTexture(id: 2, imageURL: "flag-4-64"),
         OverlayTexture(id: 3, imageURL: "football-2-64"),
         OverlayTexture(id: 4, imageURL: "sun-6-64"),
         OverlayTexture(id: 5, imageURL: "tire-64")]
        
    var body: some View {
        VStack(alignment: .leading) {
            Text("Pick Overlay Color:")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(overlayTextures, id: \.id) { texture in
                        Group {
                            OverlayTexturesView(overlayTexture: texture)
                        }
                    }
                }
            }
        }.padding(.leading)
    }
}
