//
//  unitTestingTests.swift
//  unitTestingTests
//
//  Created by Sagar Das on 25/05/23.
//

import XCTest
@testable import unitTesting

final class unitTestingTests: XCTestCase {
    
    var sut: Arithmetic!


    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Arithmetic()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func addingPositiveNumber() {
        //Given -> caertain input
        let num1 = 2
        let num2 = 3
        
        //When -> caertain operation
        let result = sut.add(num1: num1, num2: num2)
        
        //Then -> expecting certain output
        XCTAssertEqual(result, 5)
        
    }
    
    

}
