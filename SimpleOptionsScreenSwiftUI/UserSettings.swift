//
//  UserSettings.swift
//  SimpleOptionsScreenSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    @Published var defaultColor = Color.black
    @Published var opacity: Double = 1.0
}
