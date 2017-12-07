import XCTest
@testable import Zip2WithNilPadding

class Zip2WithNilPaddingTests: XCTestCase {
    func testSameLengths() {
      let first: [String] = ["a", "b", "c"]
      let second: [Int] = [1, 2, 3]
      let expected: Array<(String?, Int?)> = [("a", 1), ("b", 2), ("c", 3)]

      let actual = Array(Zip2WithNilPadding(first, second))
      XCTAssertEqual(actual[0].0, expected[0].0)
      XCTAssertEqual(actual[0].1, expected[0].1)
      XCTAssertEqual(actual[1].0, expected[1].0)
      XCTAssertEqual(actual[1].1, expected[1].1)
      XCTAssertEqual(actual[2].0, expected[2].0)
      XCTAssertEqual(actual[2].1, expected[2].1)
    }

    func testFirstLonger() {
      let first: [String] = ["a", "b", "c", "d"]
      let second: [Int] = [1, 2]
      let expected: Array<(String?, Int?)> = [("a", 1), ("b", 2), ("c", nil), ("d", nil)]

      let actual = Array(Zip2WithNilPadding(first, second))
      XCTAssertEqual(actual[0].0, expected[0].0)
      XCTAssertEqual(actual[0].1, expected[0].1)
      XCTAssertEqual(actual[1].0, expected[1].0)
      XCTAssertEqual(actual[1].1, expected[1].1)
      XCTAssertEqual(actual[2].0, expected[2].0)
      XCTAssertEqual(actual[2].1, expected[2].1)
      XCTAssertEqual(actual[3].0, expected[3].0)
      XCTAssertEqual(actual[3].1, expected[3].1)
    }

    func testSecondLonger() {
      let first: [String] = ["a", "b"]
      let second: [Int] = [1, 2, 3, 4]
      let expected: Array<(String?, Int?)> = [("a", 1), ("b", 2), (nil, 3), (nil, 4)]

      let actual = Array(Zip2WithNilPadding(first, second))
      XCTAssertEqual(actual[0].0, expected[0].0)
      XCTAssertEqual(actual[0].1, expected[0].1)
      XCTAssertEqual(actual[1].0, expected[1].0)
      XCTAssertEqual(actual[1].1, expected[1].1)
      XCTAssertEqual(actual[2].0, expected[2].0)
      XCTAssertEqual(actual[2].1, expected[2].1)
      XCTAssertEqual(actual[3].0, expected[3].0)
      XCTAssertEqual(actual[3].1, expected[3].1)
    }

    static var allTests = [
        ("testSameLengths", testSameLengths),
        ("testFirstLonger", testFirstLonger),
        ("testSecondLonger", testSecondLonger),
    ]
}
