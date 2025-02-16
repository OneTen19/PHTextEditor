import XCTest
@testable import PHTextEditor
import SwiftUI

final class PHTextEditorTests: XCTestCase {
    @MainActor func testExample() throws {
        let text = Binding.constant("")
        let view = PHTextEditor(placeholder: "Enter text...", text: text)
            .configure(
                maxLength: 5,
                placeholderColor: .blue,
                border: .red,
                borderWidth: 1,
                borderRadius: 12,
                textPadding: EdgeInsets(top: 10, leading: 100, bottom: 10, trailing: 10)
            )
        
        XCTAssertNotNil(view)
    }
}
