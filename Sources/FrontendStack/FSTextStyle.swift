//
//  FSTextStyle.swift
//  FrontendStack
//
//  Created by xdmgzdev on 23/02/2021.
//

import UIKit

public struct FSTextStyle {
  public let font: UIFont
  public let color: UIColor
}

public extension FSTextStyle {
  static let h1 = FSTextStyle(font: FSFont.lightFont(40), color: FSColor.primaryAlternative)
  static let h2 = FSTextStyle(font: FSFont.lightFont(25), color: FSColor.primaryAlternative)
  static let h3 = FSTextStyle(font: FSFont.regularFont(19), color: FSColor.primaryAlternative)
  static let h4 = FSTextStyle(font: FSFont.semiBoldFont(16), color: FSColor.text)
  static let h4Small = FSTextStyle(font: FSFont.semiBoldFont(14), color: FSColor.text)

  static let body = FSTextStyle(font: FSFont.regularFont(16), color: FSColor.text)
  static let bodySmall = FSTextStyle(font: FSFont.regularFont(14), color: FSColor.text)
  static let bodyStrong = FSTextStyle(font: FSFont.semiBoldFont(16), color: FSColor.text)
  static let bodyStrongSmall = FSTextStyle(font: FSFont.semiBoldFont(14), color: FSColor.text)
  static let bodyEmphasised = FSTextStyle(font: FSFont.italicFont(16), color: FSColor.text)
  static let bodyEmphasisedSmall = FSTextStyle(font: FSFont.italicFont(14), color: FSColor.text)
  static let bodyLight = FSTextStyle(font: FSFont.regularFont(16), color: FSColor.textSubtleDark)
  static let bodyLightSmall = FSTextStyle(
    font: FSFont.regularFont(14),
    color: FSColor.textSubtleDark
  )
}
