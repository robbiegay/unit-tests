//
//  unit_testsTests.swift
//  unit-testsTests
//
//  Created by Robbie Gay on 5/6/20.
//  Copyright © 2020 Robbie Gay. All rights reserved.
//

import XCTest
@testable import unit_tests

class unit_testsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAllWordsLoaded() {
        let playData = PlayData()
        XCTAssertEqual(playData.allWords.count, 0, "allWords must be 0")
    }
    
}
