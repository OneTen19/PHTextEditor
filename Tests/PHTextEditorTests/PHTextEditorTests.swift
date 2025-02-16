import XCTest
@testable import PHTextEditor
import SwiftUI

final class PHTextEditorTests: XCTestCase {
    @MainActor func testExample() throws {
        let text = Binding.constant("")
        let view = PHTextEditor(placeholder: "Enter text...", text: text, maxLength: 10)
        
        XCTAssertNotNil(view)
    }
}
