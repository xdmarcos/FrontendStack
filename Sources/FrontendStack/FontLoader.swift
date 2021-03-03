//
//  FontLoader.swift
//  FrontendStack
//
//  Created by xdmgzdev on 23/02/2021.
//

import CoreGraphics
import CoreText
import Foundation

public class FontLoader {
  public static let shared = FontLoader()
  public let fontBundle = Bundle.module

  public func registerFonts() {
    let customFonts = [
      "Myriad-Italic.ttf",
      "Myriad-Light.ttf",
      "Myriad-SemiBold.ttf",
      "Myriad.ttf",
      "MyriadPro-Bold.otf",
      "MyriadPro-BoldIt.otf",
      "MyriadPro-It.otf",
      "MyriadPro-Light.otf",
      "MyriadPro-Regular.otf",
      "MyriadPro-Semibold.otf",
      "MyriadPro-SemiboldIt.otf"
    ]

    for fontName in customFonts {
      registerFontWithName(fontName: fontName)
    }
  }

  private func registerFontWithName(fontName: String) {
    guard let fontURL = fontBundle.url(forResource: fontName, withExtension: nil) else {
      fatalError("Couldn't find font \(fontName)")
    }

    guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
      fatalError("Couldn't load data from the font \(fontName)")
    }

    guard let font = CGFont(fontDataProvider) else {
      fatalError("Couldn't create font from data")
    }

    var error: Unmanaged<CFError>?
    guard CTFontManagerRegisterGraphicsFont(font, &error) else {
      print("Error registering font \(fontName): \(String(describing: error))")
      return
    }
  }
}
