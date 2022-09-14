//
//  ExampleTest.swift
//  DemoTestTests
//
//  Created by ChuMeiHua on 2022/9/12.
//

import XCTest

class ExampleTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    /// assert - Boolean 判斷式
    func testBooleanExample() throws {
        let a = 0
        //判斷expression
        XCTAssert(a == 0, "assert failed")
        //判斷expression為true = 通過
        XCTAssertTrue(a == 0, "boolean assert true failed")
        //判斷expression為false = 通過
        XCTAssertFalse(a != 0, "boole assert false failed")
    }
    
    // assert - nil 判斷式
    func testNilExample() throws {
        var a : String? = nil
        // nil = 通過
        XCTAssertNil(a)
        
        a = "Hello"
        // not nil = 通過
        XCTAssertNotNil(a)
        
        //optional 解包(可設置a = nil確認)
        let string = try XCTUnwrap(a)
        XCTAssert(string == "Hello")
    }
    
    
    class A {
        var name: String = ""
    }
    
    // assert - equal 判斷式
    func testEqualExample() throws {
        //單純判斷值是否相同
        let a = 0
        //相同 = 通過
        XCTAssertEqual(a, 0)
        //不相同 = 通過
        XCTAssertNotEqual(a, 1)
        
        //主要用於class 判斷是否相同(也包含判斷記憶體位置)
        let a1 = A()
        let a2 = a1
        print("a \(a1 === a2)")
        XCTAssertIdentical(a1 as AnyObject, a2 as AnyObject)
        //
        //值相同，但記憶體位置不同
        let a3 = A()
        let a4 = A()
        print("a \(a3 === a4)")
        XCTAssertNotIdentical(a3 as AnyObject, a4 as AnyObject)
    }
    
    func testComparableExample() throws {
        let a = 10
        // expression1 < expression2
        XCTAssertGreaterThan(a, 5)
        // expression1 > expression2
        XCTAssertLessThan(a, 30)
    }
    
    func testErrorExample() throws {
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
