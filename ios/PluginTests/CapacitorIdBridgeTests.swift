import XCTest
@testable import Plugin

class CapacitorIdBridgeTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEcho() {
        // This is an example of a functional test case for a plugin.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let implementation = CapacitorIdBridge()
        let value = "Hello, World!"
        let result = implementation.echo(value)

        XCTAssertEqual(value, result)
    }

    func setAccessibilityIdentifier() {
    // Retrieve the saved ID from UserDefaults
    if let savedID = UserDefaults.standard.string(forKey: "CustomElement_NativeID") {
        
        // Find the XCUIElementTypeStaticText element you want to assign the ID to
        let app = XCUIApplication()
        let staticText = app.staticTexts["The current static text's accessibility identifier or label"]
        staticText.accessibilityIdentifier = savedID
    }
}
}
