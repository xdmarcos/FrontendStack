//
//  FSTextStyle.swift
//  FrontendStackStyle
//
//  Created by xdmgzdev on 23/02/2021.
//

import UIKit

public struct FSTextStyle {
  public let font: UIFont
  public let color: UIColor
}

public extension FSTextStyle {
  static let h1 = FSTextStyle(font: FSFont.light(40), color: FSColor.primaryAlternative)
  static let h2 = FSTextStyle(font: FSFont.light(25), color: FSColor.primaryAlternative)
  static let h3 = FSTextStyle(font: FSFont.regular(19), color: FSColor.primaryAlternative)
  static let h4 = FSTextStyle(font: FSFont.bold(16), color: FSColor.text)
  static let h4Small = FSTextStyle(font: FSFont.bold(14), color: FSColor.text)

  static let body = FSTextStyle(font: FSFont.regular(16), color: FSColor.text)
  static let bodySmall = FSTextStyle(font: FSFont.regular(14), color: FSColor.text)
  static let bodyStrong = FSTextStyle(font: FSFont.bold(16), color: FSColor.text)
  static let bodyStrongSmall = FSTextStyle(font: FSFont.bold(14), color: FSColor.text)
  static let bodyEmphasised = FSTextStyle(font: FSFont.italic(16), color: FSColor.text)
  static let bodyEmphasisedSmall = FSTextStyle(font: FSFont.italic(14), color: FSColor.text)
  static let bodyLight = FSTextStyle(font: FSFont.regular(16), color: FSColor.textSubtleDark)
  static let bodyLightSmall = FSTextStyle(font: FSFont.regular(14), color: FSColor.textSubtleDark)
}
