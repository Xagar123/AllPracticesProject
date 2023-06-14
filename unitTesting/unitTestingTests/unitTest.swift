//
//  unitTest.swift
//  unitTestingTests
//
//  Created by Sagar Das on 25/05/23.
//

import XCTest
@testable import unitTesting

final class unitTest: XCTestCase {
    
    var sut: Arithmetic!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Arithmetic()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testAddingPositiveNumber() {
        //Given -> caertain input
        let num1 = 2
        let num2 = 3
        
        //When -> caertain operation
        let result = sut.add(num1: num1, num2: num2)
        
        //Then -> expecting certain output
        XCTAssertEqual(result, 5)
        
    }
    
    func testAddingNegativeNumber() {
        //Given -> caertain input
        let num1 = 2
        let num2 = -3
        
        //When -> caertain operation
        let result = sut.add(num1: num1, num2: num2)
        
        //Then -> expecting certain output
        XCTAssertEqual(result, -1)
        
    }
    
   

}
