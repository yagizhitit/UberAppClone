//
//  Color.swift
//  UberAppClone
//
//  Created by Yağız Hitit on 18.12.2023.
//

import SwiftUI

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
}
