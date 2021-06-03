//
//  FlexViewFactoryTest.swift
//  FlexViewsTests
//
//  Created by Martin Rehder on 02.06.21.
//

import XCTest
@testable import FlexViewDemoApp
import FlexControls

class FlexViewFactoryTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testThatSimpleFlexViewsCanBeCreated() throws {
        // Given
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        let style = FlexShapeStyle(style: .rounded)
        let styleColor = UIColor.lightGray
        
        // When
        let flexView = FlexViewFactory.flexView(withFrame: frame).using(style: style, andStyleColor: styleColor).build()
        
        // Then
        XCTAssert(flexView.frame == frame)
        XCTAssert(flexView.styleColor == styleColor)

        if case flexView.style.style = style.style {
        }
        else {
            XCTFail("Unexpected style!")
        }
    }

}
