//
//  FlexViewHeaderBuilder.swift
//  FlexViews
//
//  Created by Martin Rehder on 03.06.21.
//

import Foundation
import FlexControls

public class FlexViewHeaderBuilder<T: FlexView> {
    private let flexView: T
    private let flexViewBuilder: FlexViewBuilder<T>
    
    public init(flexViewBuilder: FlexViewBuilder<T>, flexView: T) {
        self.flexView = flexView
        self.flexViewBuilder = flexViewBuilder
    }
    
    public func using(style: FlexShapeStyle, andStyleColor styleColor: UIColor) -> FlexViewHeaderBuilder<T> {
        flexView.header.style = style
        flexView.header.styleColor = styleColor
        return self
    }

    public func createHeader(withText text: String, size: CGFloat, alignment: NSTextAlignment) -> FlexViewHeaderBuilder<T> {
        flexView.headerSize = size
        flexView.headerText = text
        flexView.header.caption.labelTextAlignment = alignment
        return self
    }

    public func and() -> FlexViewBuilder<T> {
        return flexViewBuilder
    }
    
    public func build() -> T {
        return flexViewBuilder.build()
    }
}
