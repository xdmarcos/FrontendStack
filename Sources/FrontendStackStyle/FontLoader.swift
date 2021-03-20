//
//  FontLoader.swift
//  FrontendStackStyle
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
      "Roboto-Black.ttf",
      "Roboto-BlackItalic.ttf",
      "Roboto-Bold.ttf",
      "Roboto-BoldItalic.ttf",
      "Roboto-Italic.ttf",
      "Roboto-Light.ttf",
      "Roboto-LightItalic.ttf",
      "Roboto-Medium.ttf",
      "Roboto-MediumItalic.ttf",
      "Roboto-Regular.ttf",
      "Roboto-Thin.ttf",
      "Roboto-ThinItalic.ttf"
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
