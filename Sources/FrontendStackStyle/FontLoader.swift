//
//  FontLoader.swift
//  FrontendStackStyle
//
//  Created by xdmgzdev on 23/02/2021.
//

import CoreGraphics
import CoreText
import Foundation

public enum FontLoaderError: Error {
  case fontDoesNotExist(String)
  case failedToLoadFont(String)
  case failedToCreateFont(String)
  case failedToRegisterFont(String, Error?)
}

public class FontLoader {
  private let fontBundle: Bundle

  /// Returns an instance of the FontLoader class.
  /// - Parameter fontBundle: A bundle with fonts. When nil the Bundle.module value will be used.
  public init(fontBundle: Bundle? = nil) {
    if let fontBundle = fontBundle {
      self.fontBundle = fontBundle
    } else {
      self.fontBundle = .module
    }
  }

  public func registerFonts() throws {
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
      try registerFontWithName(fontName: fontName)
    }
  }

  private func registerFontWithName(fontName: String) throws {
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
      guard let error: Error = error?.takeRetainedValue() else {
        throw FontLoaderError.failedToRegisterFont(fontName, nil)
      }

      let nsError = error as NSError
      if nsError.code == CTFontManagerError.alreadyRegistered.rawValue,
         nsError.domain == kCTFontManagerErrorDomain as String {
        // Continue if already registered
        return
      }

      throw FontLoaderError.failedToRegisterFont(fontName, error)
    }
  }
}
