//
//  UITestingDemoUITests.swift
//  UITestingDemoUITests
//
//  Created by 김지훈 on 2023/12/18.
//

import XCTest

final class UITestingDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWelcome() throws {
        let app = XCUIApplication()
        app.launch()

//        let welcome = app.staticTexts["Welcome!"]
        // 현재 앱에 존재하는 유일한 텍스트 뷰
        let welcome = app.staticTexts.element
        
        //welcome을 Test하기위한 2가지 방법
        XCTAssert(welcome.exists)
        XCTAssertEqual(welcome.label, "Welcome!")

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
