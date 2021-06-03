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
    
    func using(style: FlexShapeStyle, andStyleColor styleColor: UIColor) -> FlexViewHeaderBuilder<T> {
        flexView.header.style = style
        flexView.header.styleColor = styleColor
        return self
    }

    func createHeader(withText text: String, size: CGFloat, alignment: NSTextAlignment) -> FlexViewHeaderBuilder<T> {
        flexView.headerSize = size
        flexView.headerText = text
        flexView.header.caption.labelTextAlignment = alignment
        return self
    }

    func and() -> FlexViewBuilder<T> {
        return flexViewBuilder
    }
    
    func build() -> T {
        return flexViewBuilder.build()
    }
}
