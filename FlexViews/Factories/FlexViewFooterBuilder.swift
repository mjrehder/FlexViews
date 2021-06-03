//
//  FlexViewFooterBuilder.swift
//  FlexViews
//
//  Created by Martin Rehder on 03.06.21.
//

import Foundation
import FlexControls

public class FlexViewFooterBuilder<T: FlexView> {
    private let flexView: T
    private let flexViewBuilder: FlexViewBuilder<T>
    
    public init(flexViewBuilder: FlexViewBuilder<T>, flexView: T) {
        self.flexView = flexView
        self.flexViewBuilder = flexViewBuilder
    }
    
    func using(style: FlexShapeStyle, andStyleColor styleColor: UIColor) -> FlexViewFooterBuilder<T> {
        flexView.footer.style = style
        flexView.footer.styleColor = styleColor
        return self
    }

    func createFooter(withText text: String, size: CGFloat, alignment: NSTextAlignment) -> FlexViewFooterBuilder<T> {
        flexView.footerSize = size
        flexView.footerText = text
        flexView.footer.caption.labelTextAlignment = alignment
        return self
    }

    func and() -> FlexViewBuilder<T> {
        return flexViewBuilder
    }

    func build() -> T {
        return flexViewBuilder.build()
    }
}
