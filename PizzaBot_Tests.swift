
import XCTest
import Foundation

class PizzaBot_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

    func testPizzaSliceAlgorithm() throws {
            XCTAssertEqual(PizzaSliceAlgorithm.printPath(array: [Point(x: 0, y:0), Point(x: 1, y: 3), Point(x: 4, y: 4), Point(x: 4, y: 2), Point(x: 4, y: 2), Point(x: 0, y: 1), Point(x: 3, y: 2), Point(x: 2, y: 3), Point(x: 4, y: 1)]), "DENNNDEEENDSSDDWWWWSDEEENDWNDEESSD")
        }
}
