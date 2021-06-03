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
    
    func createFlexView(withFrame frame: CGRect) -> FlexViewBuilder {
        flexView.frame = frame
        return self
    }

    func using(style: FlexShapeStyle, andStyleColor styleColor: UIColor) -> FlexViewBuilder {
        flexView.style = style
        flexView.styleColor = styleColor
        return self
    }

    func build() -> FlexView {
        return flexView
    }
}
