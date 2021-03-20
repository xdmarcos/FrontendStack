//
//  FSFont.swift
//  FrontendStackStyle
//
//  Created by xdmgzdev on 23/02/2021.
//

import UIKit

public enum FSFont {  
  static func black(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Black", size: ofSize)
  }

  static func blackItalic(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-BlackItalic", size: ofSize)
  }

  static func bold(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Bold", size: ofSize)
  }

  static func boldItalic(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-BoldItalic", size: ofSize)
  }

  static func italic(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Italic", size: ofSize)
  }

  static func light(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Light", size: ofSize)
  }

  static func lightItalic(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-LightItalic", size: ofSize)
  }

  static func medium(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Medium", size: ofSize)
  }

  static func mediumItalic(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-MediumItalic", size: ofSize)
  }

  static func regular(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Regular", size: ofSize)
  }

  static func thin(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-Thin", size: ofSize)
  }

  static func thinItalic(_ ofSize: CGFloat) -> UIFont {
    loadFont(name: "Roboto-ThinItalic", size: ofSize)
  }
}

private extension FSFont {
  static func loadFont(name: String, size: CGFloat) -> UIFont {
    guard let font = UIFont(name: name, size: size) else {
      fatalError("\(name) font not added to project.")
    }
    return font
  }
}
