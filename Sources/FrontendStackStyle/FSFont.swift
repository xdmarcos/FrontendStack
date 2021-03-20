//
//  FSFont.swift
//  FrontendStackStyle
//
//  Created by xdmgzdev on 23/02/2021.
//

import UIKit

public struct FSFont {
  public static func lightProFont(_ ofSize: CGFloat) -> UIFont {
    guard let lightFont = UIFont(name: "MyriadPro-Light", size: ofSize) else {
      fatalError("MyriadPro-Light font not added to project")
    }
    return lightFont
  }

  public static func boldProFont(_ ofSize: CGFloat) -> UIFont {
    guard let lightFont = UIFont(name: "MyriadPro-Bold", size: ofSize) else {
      fatalError("MyriadPro-Bold font not added to project")
    }
    return lightFont
  }

  public static func lightFont(_ ofSize: CGFloat) -> UIFont {
    guard let lightFont = UIFont(name: "Myriad-Light", size: ofSize) else {
      fatalError("Myriad-Light font not added to project")
    }
    return lightFont
  }

  @available(
    *,
    unavailable,
    message: "Part of RFS but not used in project. Please add font first and remove this message before using lightItalicFont" // swiftlint:disable:this line_length
  )
  public static func lightItalicFont(_: CGFloat) -> UIFont {
    fatalError("Part of RFS but not used in project. Please add font first and remove this message before using lightItalicFont") // swiftlint:disable:this line_length
  }

  public static func regularFont(_ ofSize: CGFloat) -> UIFont {
    guard let regularFont = UIFont(name: "MyriadPro-Regular", size: ofSize) else {
      fatalError("MyriadPro-Regular font not added to project")
    }
    return regularFont
  }

  public static func italicFont(_ ofSize: CGFloat) -> UIFont {
    guard let italicFont = UIFont(name: "Myriad-Italic", size: ofSize) else {
      fatalError("Myriad-Italic font not added to project")
    }
    return italicFont
  }

  public static func boldItalicFont(_ ofSize: CGFloat) -> UIFont {
    guard let font = UIFont(name: "MyriadPro-BoldIt", size: ofSize) else {
      fatalError("MyriadPro-BoldIt font not added to project")
    }
    return font
  }

  public static func semiBoldFont(_ ofSize: CGFloat) -> UIFont {
    guard let semiBoldFont = UIFont(name: "Myriad-SemiBold", size: ofSize) else {
      fatalError("Myriad-SemiBold font not added to project")
    }
    return semiBoldFont
  }

  public static func semiBoldItalicFont(_ ofSize: CGFloat) -> UIFont {
    guard let font = UIFont(name: "MyriadPro-SemiboldIt", size: ofSize) else {
      fatalError("MyriadPro-SemiboldIt italic font not added to project")
    }
    return font
  }
}
