    import XCTest
    @testable import Acronym

    final class AcronymTests: XCTestCase {
        func testAbbreviateBasic() {
            XCTAssertEqual(Acronym().abbreviate(phrase: "Portable Network Graphics"), "PNG")
        }
        
        func testAbbreviateMixedCase() {
            XCTAssertEqual(Acronym().abbreviate(phrase: "Away from keyboard"), "AFK")
        }
        
        func testAbbreviatePascalCase() {
            XCTAssertEqual(Acronym().abbreviate(phrase: "HyperText Markup Language"), "HTML")
        }
        
        func testAbbreviateCommas() {
            XCTAssertEqual(Acronym().abbreviate(phrase: "First In, First Out"), "FIFO")
        }
        
        func testAbbreviateHyphens() {
            XCTAssertEqual(Acronym().abbreviate(phrase: "Complementary metal-oxide semiconductor"), "CMOS")
        }
    }
