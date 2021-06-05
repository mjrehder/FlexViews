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

    func testThatHeadersCanBeAddedToFlexViews() throws {
        // Given
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        let style = FlexShapeStyle(style: .rounded)
        let styleColor = UIColor.lightGray
        
        let headerStyle = FlexShapeStyle(style: .box)
        let headerStyleColor = UIColor.gray
        let headerSize: CGFloat = 36
        let headerText = "Test Header Text"
        let headerTextAlignment: NSTextAlignment = .center
        
        // When
        let flexView = FlexViewFactory.flexView(withFrame: frame) //
            .using(style: style, andStyleColor: styleColor) //
            .addHeader() //
            .caption(withText: headerText, size: headerSize, alignment: headerTextAlignment) //
            .using(style: headerStyle, andStyleColor: headerStyleColor) //
            .build()
        
        // Then
        XCTAssert(flexView.headerSize == headerSize)
        XCTAssert(flexView.header.styleColor == headerStyleColor)
        XCTAssert(flexView.headerText == headerText)
        XCTAssert(flexView.header.caption.labelTextAlignment == headerTextAlignment)
    }

    func testThatFootersCanBeAddedToFlexViews() throws {
        // Given
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        let style = FlexShapeStyle(style: .rounded)
        let styleColor = UIColor.lightGray
        
        let footerStyle = FlexShapeStyle(style: .box)
        let footerStyleColor = UIColor.gray
        let footerSize: CGFloat = 36
        let footerText = "Test Footer Text"
        let footerTextAlignment: NSTextAlignment = .center
        
        // When
        let flexView = FlexViewFactory.flexView(withFrame: frame) //
            .using(style: style, andStyleColor: styleColor) //
            .addFooter() //
            .caption(withText: footerText, size: footerSize, alignment: footerTextAlignment) //
            .using(style: footerStyle, andStyleColor: footerStyleColor) //
            .build()
        
        // Then
        XCTAssert(flexView.footerSize == footerSize)
        XCTAssert(flexView.footer.styleColor == footerStyleColor)
        XCTAssert(flexView.footerText == footerText)
        XCTAssert(flexView.footer.caption.labelTextAlignment == footerTextAlignment)
    }
    
    func testThatHeadersAndFootersCanBeAddedToFlexViews() throws {
        // Given
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        let style = FlexShapeStyle(style: .rounded)
        let styleColor = UIColor.lightGray
        
        let headerStyle = FlexShapeStyle(style: .box)
        let headerStyleColor = UIColor.gray
        let headerSize: CGFloat = 36
        let headerText = "Test Header Text"
        
        let footerStyle = FlexShapeStyle(style: .thumb)
        let footerStyleColor = UIColor.lightText
        let footerSize: CGFloat = 26
        let footerText = "Test Footer Text"
        let footerTextAlignment: NSTextAlignment = .right
        
        // When
        let flexView = FlexViewFactory.flexView(withFrame: frame) //
            .using(style: style, andStyleColor: styleColor) //
            .addHeader() //
            .caption(withCenteredText: headerText, size: headerSize) //
            .using(style: headerStyle, andStyleColor: headerStyleColor) //
            .and() //
            .addFooter() //
            .caption(withText: footerText, size: footerSize, alignment: footerTextAlignment) //
            .using(style: footerStyle, andStyleColor: footerStyleColor) //
            .build()
        
        // Then
        XCTAssert(flexView.headerSize == headerSize)
        XCTAssert(flexView.header.styleColor == headerStyleColor)
        XCTAssert(flexView.headerText == headerText)
        XCTAssert(flexView.header.caption.labelTextAlignment == .center)

        XCTAssert(flexView.footerSize == footerSize)
        XCTAssert(flexView.footer.styleColor == footerStyleColor)
        XCTAssert(flexView.footerText == footerText)
        XCTAssert(flexView.footer.caption.labelTextAlignment == footerTextAlignment)
    }
}
