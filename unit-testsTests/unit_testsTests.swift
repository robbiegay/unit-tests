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
        XCTAssertEqual(playData.wordCounts.count(for: "Lorenzo"), 24, "Lorenzo must equal 24.")
        XCTAssertEqual(playData.wordCounts.count(for: "Aside"), 175, "Aside must equal 24.")
        XCTAssertEqual(playData.wordCounts.count(for: "Re"), 154, "Re must equal 24.")
    }
    
    func testWordsLoadQuickly() {
        measure {
            _ = PlayData()
        }
    }
    
    // Test driven development: write tests that fail, then write just enough code to make them pass.
    
    func testUserFilterWorks() {
        let playData = PlayData()

        playData.applyUserFilter("100")
        XCTAssertEqual(playData.filteredWords.count, 495, "495 words occur 100 or more times.")

        playData.applyUserFilter("1000")
        XCTAssertEqual(playData.filteredWords.count, 55, "55 words occur 1000 or more times.")

        playData.applyUserFilter("10000")
        XCTAssertEqual(playData.filteredWords.count, 1, "1 word occurs 10,000 or more times.")

        playData.applyUserFilter("test")
        XCTAssertEqual(playData.filteredWords.count, 56, "test occurs 56 times.")

        playData.applyUserFilter("swift")
        XCTAssertEqual(playData.filteredWords.count, 7, "swift occurs 7 times.")

        playData.applyUserFilter("objective-c")
        XCTAssertEqual(playData.filteredWords.count, 0, "objective-c occurs 0 times.")
    }
    
}
