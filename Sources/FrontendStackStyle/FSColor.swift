//
//  FSColor.swift
//  FrontendStackStyle
//
//  Created by xdmgzdev on 23/02/2021.
//

import UIKit

public struct FSColor {}

// MARK: Primary palette

public extension FSColor {
  static let background = UIColor(named: "background")
  static let primary = UIColor(named: "primary")
  static let secondary = UIColor(named: "secondary")
  static let terciary = UIColor(named: "terciary")
}

// MARK: Text colors

public extension FSColor {
  static let text = UIColor(named: "text")
  static let textDark = UIColor(named: "textDark")
  static let textLight = UIColor(named: "textLight")
  static let textSuccess = UIColor(named: "textSuccess")
  static let textError = UIColor(named: "textError")
}

// MARK: Components

public extension FSColor {
  static let placeholder = UIColor(named: "placeholder")
  static let separator = UIColor(named: "separator")
}
