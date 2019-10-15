//
//  CuteAttribute.swift
//  Cute
//
//  Created by vsccw on 2017/8/9.
//  Copyright © 2017年 https://vsccw.com. All rights reserved.
//

import Foundation

/// A protocol type for `CuteAttribute`
public protocol CuteAttributeable {

    associatedtype Attributeable
    var cute: Attributeable { get }
}

public final class CuteAttribute<Base>: NSObject {

    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public extension CuteAttributeable {

    var cute: CuteAttribute<Self> {
        get { return CuteAttribute(self) }
        set { _ = newValue }
    }
}

extension NSMutableAttributedString: CuteAttributeable { }

public extension CuteAttribute where Base: NSMutableAttributedString {

    var attributedString: NSMutableAttributedString {
        return base
    }

    var copy: CuteAttribute<NSMutableAttributedString>? {
        return type(of: self).init(base) as? CuteAttribute<NSMutableAttributedString>
    }
}
