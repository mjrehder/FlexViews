//
//  FlexViewBuilder.swift
//  FlexViews
//
//  Created by Martin Rehder on 02.06.21.
//

import Foundation
import FlexControls

public class FlexViewBuilder<T: FlexView> {
    var flexView: T = T()
    
    public func createFlexView(withFrame frame: CGRect) -> FlexViewBuilder {
        flexView.frame = frame
        return self
    }

    public func using(style: FlexShapeStyle, andStyleColor styleColor: UIColor) -> FlexViewBuilder<T> {
        flexView.style = style
        flexView.styleColor = styleColor
        return self
    }

    public func addHeader(withText text: String, size: CGFloat, alignment: NSTextAlignment) -> FlexViewHeaderBuilder<T> {
        let headerBuilder = FlexViewHeaderBuilder<T>(flexViewBuilder: self, flexView: flexView)
        return headerBuilder.createHeader(withText: text, size: size, alignment: alignment)
    }
    
    public func addFooter(withText text: String, size: CGFloat, alignment: NSTextAlignment) -> FlexViewFooterBuilder<T> {
        let footerBuilder = FlexViewFooterBuilder<T>(flexViewBuilder: self, flexView: flexView)
        return footerBuilder.createFooter(withText: text, size: size, alignment: alignment)
    }
    
    public func build() -> T {
        return flexView
    }
}
