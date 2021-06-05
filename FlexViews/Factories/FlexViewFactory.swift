//
//  FlexViewFactory.swift
//  FlexViews
//
//  Created by Martin Rehder on 02.06.21.
//

import Foundation
import FlexControls

public class FlexViewFactory<T: FlexView> {
    public static func flexView(withFrame frame: CGRect) -> FlexViewBuilder<T> {
        let builder = FlexViewBuilder<T>()
        return builder.createFlexView(withFrame: frame)
    }
}
