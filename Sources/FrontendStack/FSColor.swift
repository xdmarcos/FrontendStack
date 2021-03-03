//
//  FSColor.swift
//  FrontendStack
//
//  Created by xdmgzdev on 23/02/2021.
//

import UIKit

public struct FSColor {}

// Primary palette
public extension FSColor {
  static let primary = UIColor(red: 255 / 255.0, green: 102 / 255.0, blue: 0, alpha: 1)
  static let primaryAlternative = UIColor(red: 0, green: 0, blue: 153 / 255.0, alpha: 1)
  static let navigationbarTintColor = UIColor.white
  static let navigationbarItemsTintColor = UIColor(
    red: 20 / 255.0,
    green: 18 / 255.0,
    blue: 64 / 225,
    alpha: 1
  )
  static let navigationbarTitleTextColor = navigationbarItemsTintColor
  static let navigationbarBottomLineColor = UIColor(
    red: 227 / 255,
    green: 227 / 255,
    blue: 227 / 255,
    alpha: 1
  )
  static let secondary = UIColor(
    red: 247 / 255.0,
    green: 247 / 255.0,
    blue: 247 / 255.0,
    alpha: 1
  )
}

// Text colors
public extension FSColor {
  static let text = UIColor(red: 51 / 255.0, green: 51 / 255.0, blue: 51 / 255.0, alpha: 1)
  static let textSubtleDark = UIColor(
    red: 102 / 255.0,
    green: 102 / 255.0,
    blue: 102 / 255.0,
    alpha: 1
  )
  static let textSubtle = UIColor(
    red: 170 / 255.0,
    green: 170 / 255.0,
    blue: 170 / 255.0,
    alpha: 1
  )
  static let textSubtleLight = UIColor(
    red: 204 / 255.0,
    green: 204 / 255.0,
    blue: 204 / 255.0,
    alpha: 1
  )
  static let textSuccess = UIColor(red: 99 / 255.0, green: 166 / 255.0, blue: 0, alpha: 1)
  static let textInverted = UIColor.white
  static let textDarkGrey = UIColor.darkGray

  static let balanceColor = primaryAlternative
  static let balanceNegativeColor = UIColor(
    red: 238 / 255,
    green: 0 / 255,
    blue: 0 / 255,
    alpha: 1
  )
  static let placeholderColor = UIColor(
    red: 102 / 255,
    green: 102 / 255,
    blue: 102 / 255,
    alpha: 1
  )
  static let tableViewSeparatorColor = UIColor(
    red: 227 / 255,
    green: 227 / 255,
    blue: 227 / 255,
    alpha: 1
  )
  static let controlEnabledColor = primaryAlternative
  static let controlDisabledColor = UIColor(
    red: 204 / 255,
    green: 204 / 255,
    blue: 204 / 255,
    alpha: 1
  )
  static let amountDarkColor = UIColor(
    red: 51 / 255,
    green: 51 / 255,
    blue: 51 / 255,
    alpha: 1
  )
  static let amountLigtColor = UIColor(
    red: 118 / 255,
    green: 118 / 255,
    blue: 118 / 255,
    alpha: 1
  )

  static let tabContainerSelectionColor = UIColor(
    red: 250 / 255,
    green: 100 / 255,
    blue: 32 / 255,
    alpha: 1.0
  )
  static let tabContainerNavBarColor = UIColor(
    red: 238 / 255,
    green: 238 / 255,
    blue: 238 / 255,
    alpha: 1.0
  )
  static let qrScannerFailedColor = UIColor(
    red: 1.0,
    green: 102 / 255,
    blue: 0 / 255,
    alpha: 1.0
  )
  static let qrForegroundColor = UIColor(
    red: 25 / 255,
    green: 25 / 255,
    blue: 124 / 255,
    alpha: 1.0
  )
  static let qrBackgroundColor = UIColor.white

  static let profileSelectionlabelColor = UIColor(
    red: 20 / 255.0,
    green: 18 / 255.0,
    blue: 64 / 225,
    alpha: 1
  )
}

public extension FSColor {
  static let lineSubtle = tableViewSeparatorColor
}

// Secondary palette
public extension FSColor {
  static let paletteSecondaryRed = UIColor(
    red: 214 / 255.0,
    green: 8 / 255.0,
    blue: 59 / 255.0,
    alpha: 1
  )
}

public extension FSColor {
  static let modalNavigationHeader = UIColor(
    red: 223 / 255.0,
    green: 225 / 255.0,
    blue: 227 / 255.0,
    alpha: 1
  )
}
