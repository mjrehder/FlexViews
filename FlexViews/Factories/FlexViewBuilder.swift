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

    public func addHeader() -> FlexViewHeaderBuilder<T> {
        return FlexViewHeaderBuilder<T>(flexViewBuilder: self, flexView: flexView)
    }
    
    public func addFooter() -> FlexViewFooterBuilder<T> {
        return FlexViewFooterBuilder<T>(flexViewBuilder: self, flexView: flexView)
    }
    
    public func build() -> T {
        return flexView
    }
}
