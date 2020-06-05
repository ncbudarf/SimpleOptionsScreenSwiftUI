//
//  ContentView.swift
//  SimpleOptionsScreenSwiftUI
//
//  Created by Noah budarf on 2020-06-03.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            OverlayToggleView()
            OverlayDivider()
            OverlayOpacityView()
            OverlayDivider()
            OverlayColorListView()
            OverlayDivider()
            OverlayTexturesListView()
            OverlayDivider()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
