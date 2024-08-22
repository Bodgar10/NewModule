
import Foundation
import XCTest

class NewModuleUITest: XCTestCase {
     
    let app = XCUIApplication()
    let sut = NewModuleScreen()
 
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
 
    }
 
    override func tearDownWithError() throws {
         // Your tear down code
    }
         
    func test_yourButton_shouldDoSomething() {
        //Arrange
        sut.yourTextField.tap()
         
        sut.yourTextField.typeText("My Name")
         
        sut.yourButton.tap()
        
        //Act
        let navBar = app.navigationBars["Welcome"]
         
        //Assert
        XCTAssertTrue(navBar.exists)
    }
}