//
//  String+Cute.swift
//  Cute
//
//  Created by vsccw on 2017/8/9.
//  Copyright © 2017年 https://vsccw.com. All rights reserved.
//

import UIKit.UIColor

public extension CuteAttribute where Base: NSMutableAttributedString {

    /// Set color for `NSForegroundColorAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter color: UIColor type without default value.
    /// - Returns: self
    func color(_ color: UIColor) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.foregroundColor, value: color, range: $0)
        }
        return self
    }
    
    /// Set color for `NSAttributedString.Key.backgroundColor`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter color: UIColor type without default value.
    /// - Returns: self
    func backgroundColor(_ color: UIColor) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.backgroundColor, value: color, range: $0)
        }
        return self
    }

    /// Set baseline for `NSBaselineOffsetAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter baseline: CGFloat type without default value.
    /// - Returns: self
    func baseline(_ baseline: CGFloat) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.baselineOffset, value: baseline, range: $0)
        }
        return self
    }

    /// Set underline for `NSUnderlineStyleAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter underline: NSUnderlineStyle type without default value.
    /// - Returns: self
    func underline(_ underline: NSUnderlineStyle) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.underlineStyle, value: underline.rawValue, range: $0)
        }
        return self
    }

    /// Set underlineColor for `NSUnderlineColorAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter color: UIColor type without default value.
    /// - Returns: self
    func underlineColor(_ color: UIColor) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.underlineColor, value: color, range: $0)
        }
        return self
    }

    /// Set underlineStyle for `NSUnderlineStyleAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter underlineStyle: NSUnderlineStyle type without default value.
    /// - Parameter color: UIColor type without default value.
    /// - Returns: self
    func underline(_ underlineStyle: NSUnderlineStyle, color: UIColor) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttributes([.underlineStyle: underlineStyle.rawValue, .underlineColor: color], range: $0)
        }
        return self
    }

    /// Set font for `NSFontAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter font: UIFont type without default value.
    /// - Returns: self
    func font(_ font: UIFont) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.font, value: font, range: $0)
        }
        return self
    }

    /// Set fontName for `NSFontAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter name: String type without default value.
    /// - Returns: self
    func fontName(_ name: String) -> CuteAttribute<Base> {
        ranges.forEach {
            var mRange = $0
            let exitedFont = base.attribute(.font, at: 0, effectiveRange: &mRange) as? UIFont
            let size = exitedFont?.pointSize ?? 17.0
            let font = UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
            base.addAttribute(.font, value: font, range: $0)
        }
        return self
    }

    /// Set strikeThrough for `NSStrikethroughStyleAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter strike: NSUnderlineStyle type without default value.
    /// - Returns: self
    func strikeThrough(_ strike: NSUnderlineStyle) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.strikethroughStyle, value: strike.rawValue, range: $0)
        }
        return self
    }

    /// Set strikeThroughColor for `NSStrikethroughColorAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter color: UIColor type without default value.
    /// - Returns: self
    func strikeThroughColor(_ color: UIColor) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.strikethroughColor, value: color, range: $0)
        }
        return self
    }

    /// Set link for `NSLinkAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter link: String type without default value.
    /// - Returns: self
    func link(_ link: String) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.link, value: link, range: $0)
        }
        return self
    }

    /// Set link for `NSLinkAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter url: URL type without default value.
    /// - Returns: self
    func link(_ url: URL) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.link, value: url, range: $0)
        }
        return self
    }

    /// Set ligature for `NSLigatureAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter ligature: Int type without default value.
    /// - Returns: self
    func ligature(_ ligature: Int) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.ligature, value: ligature, range: $0)
        }
        return self
    }

    /// Set kern for `NSKernAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter kern: CGFloat type without default value.
    /// - Returns: self
    func kern(_ kern: CGFloat) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.kern, value: kern, range: $0)
        }
        return self
    }

    /// Set strokeColor for `NSStrokeColorAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter color: UIColor type without default value.
    /// - Returns: self
    func strokeColor(_ color: UIColor) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.strokeColor, value: color, range: $0)
        }
        return self
    }

    /// Set strokeWidth for `NSStrokeWidthAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter width: CGFloat type without default value.
    /// - Returns: self
    func strokeWidth(_ width: CGFloat) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.strokeWidth, value: width, range: $0)
        }
        return self
    }

    /// Set shadow for `NSShadowAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter shadow: NSShadow type without default value.
    /// - Returns: self
    func shadow(_ shadow: NSShadow) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.shadow, value: shadow, range: $0)
        }
        return self
    }

    /// Set textEffect for `NSTextEffectAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter effect: String type without default value.
    /// - Returns: self
    func textEffect(_ effect: String) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.textEffect, value: effect, range: $0)
        }
        return self
    }

    /// Set obliqueness for `NSObliquenessAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter value: CGFloat type without default value.
    /// - Returns: self
    func obliqueness(_ value: CGFloat) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.obliqueness, value: value, range: $0)
        }
        return self
    }

    /// Set expansion for `NSExpansionAttributeName`,
    /// this can be called after `range(_:)`,
    /// or not the range is default all the string.
    ///
    /// - Parameter value: CGFloat type without default value.
    /// - Returns: self
    func expansion(_ value: CGFloat) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.expansion, value: value, range: $0)
        }
        return self
    }

    /// Set textAttachment for `NSAttachmentAttributeName`,
    /// this can be called after `range(_:)`, or not the range is default all the string.
    ///
    /// - Parameter value: NSTextAttachment type without default value.
    /// - Returns: self
    func textAttachment(_ value: NSTextAttachment) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.attachment, value: value, range: $0)
        }
        return self
    }
    
    /// Set `NSMutableParagraphStyle`
    ///
    /// - Parameter value: NSMutableParagraphStyle type, including lineSpacing, lineBreakMode...
    /// - Returns: self
    func paragraphStyle(_ value: NSMutableParagraphStyle) -> CuteAttribute<Base> {
        ranges.forEach {
            base.addAttribute(.paragraphStyle, value: value, range: $0)
        }
        return self
    }
    
    /// Set the whole range lineSpace, it will come into effect when `matchAll()`,
    ///
    /// - Parameter value: line space value
    /// - Returns: self
    func lineSpacing(_ value: CGFloat) -> CuteAttribute<Base> {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = value
        return self.paragraphStyle(paragraphStyle)
    }
}
