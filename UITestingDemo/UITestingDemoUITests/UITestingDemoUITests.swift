//
//  UITestingDemoUITests.swift
//  UITestingDemoUITests
//
//  Created by 김지훈 on 2023/12/18.
//

import XCTest

final class UITestingDemoUITests: XCTestCase {

    // 전역 객체
    let app = XCUIApplication()
    override func setUpWithError() throws {
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
    }

    func testWelcome() throws {
        app.launch()
//        let welcome = app.staticTexts["Welcome!"]
        // 현재 앱에 존재하는 유일한 텍스트 뷰
        let welcome = app.staticTexts.element
        
        //welcome을 Test하기위한 2가지 방법
        XCTAssert(welcome.exists)
        XCTAssertEqual(welcome.label, "Welcome!")

    }

    //로그인 버튼 Test
    func testLoginButton() throws {
        app.launch()
        
//        let login = app.buttons["Login"]
        
        //View에 식별자를 활용 Test
        let login = app.buttons["LoginButton"]
        
        XCTAssert(login.exists)
        
        // 버튼의 라벨을 확인
        // 라벨이 의도적으로 변경됐는지 화
        XCTAssertEqual(login.label, "Login")
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
