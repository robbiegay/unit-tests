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
    
    // When you create a function that inputs and returns nothing, and begins with
    // "test", Xcode assumes this is a test and plases the empty "run" triangle next to it
    func testAllWordsLoaded() {
        let playData = PlayData()
        print(playData.allWords.count)
        XCTAssertEqual(playData.allWords.count, 18440, "allWords was not 18440.")
    }
    
    func testWordCountsAreCorrect() {
        let playData = PlayData()
        XCTAssertEqual(playData.wordCounts["Lorenzo"], 24, "Lorenzo must equal 24.")
        XCTAssertEqual(playData.wordCounts["Aside"], 175, "Aside must equal 24.")
        XCTAssertEqual(playData.wordCounts["Re"], 154, "Re must equal 24.")
    }
    
}
